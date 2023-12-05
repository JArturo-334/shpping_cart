import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cart_item_model.dart';
export 'cart_item_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget(
      {Key? key,
      required this.title,
      required this.price,
      required this.quantity,
      required this.img,
      required this.indexAt,
      required this.onRemove})
      : super(key: key);

  final String? title;
  final double? price;
  final int? quantity;
  final String? img;
  final int? indexAt;
  final Function(int)? onRemove;

  @override
  _CartItemWidgetState createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  late CartItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onDoubleTap: () async {
        FFAppState().update(() {
          FFAppState().removeAtIndexFromCartList(widget.indexAt!);
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget.img!,
                  width: 90.0,
                  height: 110.0,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFFF5F5F5),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      '\$${valueOrDefault<String>(
                        widget.price.toString(),
                        '0',
                      )}',
                      '0',
                    ),
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFFF5F5F5),
                          fontWeight: FontWeight.w200,
                        ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Color(0xFFF5F5F5),
                        width: 2,
                      ),
                    ),
                    child: FlutterFlowCountController(
                      decrementIconBuilder: (enabled) => FaIcon(
                        FontAwesomeIcons.minus,
                        color: enabled
                            ? Color(0xFFF5F5F5)
                            : FlutterFlowTheme.of(context).alternate,
                        size: 15,
                      ),
                      incrementIconBuilder: (enabled) => FaIcon(
                        FontAwesomeIcons.plus,
                        color: enabled
                            ? Color(0xFFF5F5F5)
                            : FlutterFlowTheme.of(context).alternate,
                        size: 15,
                      ),
                      countBuilder: (count) => Text(
                        count.toString(),
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Outfit',
                              color: Color(0xFFF5F5F5),
                              fontSize: 15,
                            ),
                      ),
                      count: _model.countControllerValue ??= widget.quantity!,
                      updateCount: (count) async {
                        setState(() => _model.countControllerValue = count);
                        FFAppState().update(() {
                          FFAppState().updateCartListAtIndex(
                            widget.indexAt!,
                            (e) => e..quantity = _model.countControllerValue,
                          );
                        });
                      },
                      stepSize: 1,
                      minimum: 1,
                      maximum: 100,
                    ),
                  ),
                ].divide(SizedBox(height: 10.0)),
              ),
            ].divide(SizedBox(width: 10.0)),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Column(
                children: [
                  Text(
                    'x${valueOrDefault<String>(
                      widget.quantity?.toString(),
                      '1',
                    )}',
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFFF5F5F5),
                          fontWeight: FontWeight.w200,
                        ),
                  ),
                  IconButton(
                      onPressed: () {
                        widget.onRemove?.call(widget.indexAt ?? -1);
                      },
                      icon: Icon(Icons.delete_forever_outlined))
                ],
              ))
        ],
      ),
    );
  }
}
