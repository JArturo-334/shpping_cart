import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_view_actions_model.dart';
export 'product_view_actions_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductViewActionsWidget extends StatefulWidget {
  const ProductViewActionsWidget({Key? key}) : super(key: key);

  @override
  _ProductViewActionsWidgetState createState() =>
      _ProductViewActionsWidgetState();
}

class _ProductViewActionsWidgetState extends State<ProductViewActionsWidget> {
  late ProductViewActionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductViewActionsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.00, -10),
      child: Container(
          width: double.infinity,
          height: 200.0,
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(30),
          ),
          // Generated code for this Column Widget...
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.55,
                        height: 128,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.00, 0.00),
                              child: Text(
                                'Quantity (100gr)',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFF1B1B1B),
                                      fontSize: 13,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.00, 0.00),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.3,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: Color(0xFF1B1B1B),
                                      width: 1,
                                    ),
                                  ),
                                  child: FlutterFlowCountController(
                                    decrementIconBuilder: (enabled) => FaIcon(
                                      FontAwesomeIcons.minus,
                                      color: enabled
                                          ? Color(0xFF1B1B1B)
                                          : FlutterFlowTheme.of(context)
                                              .alternate,
                                      size: 15,
                                    ),
                                    incrementIconBuilder: (enabled) => FaIcon(
                                      FontAwesomeIcons.plus,
                                      color: enabled
                                          ? Color(0xFF1B1B1B)
                                          : FlutterFlowTheme.of(context)
                                              .alternate,
                                      size: 15,
                                    ),
                                    countBuilder: (count) => Text(
                                      count.toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF1B1B1B),
                                            fontSize: 16,
                                          ),
                                    ),
                                    count: _model.countControllerValue ??=
                                        valueOrDefault<int>(
                                      FFAppState().selectedProduct.quantity,
                                      1,
                                    ),
                                    updateCount: (count) async {
                                      setState(() =>
                                          _model.countControllerValue = count);
                                      setState(() {
                                        FFAppState()
                                            .updateSelectedProductStruct(
                                          (e) => e
                                            ..quantity =
                                                _model.countControllerValue,
                                        );
                                      });
                                    },
                                    stepSize: 1,
                                    minimum: 1,
                                    maximum: 100,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.00, 0.00),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      FFAppState().addToCartList(
                                          ProductStruct.fromMap(FFAppState()
                                              .selectedProduct
                                              .toMap()));
                                    });
                                    ScaffoldMessenger.of(context)
                                        .clearSnackBars();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Product added',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 1500),
                                        backgroundColor: Color(0xFFFF9958),
                                      ),
                                    );
                                  },
                                  text: 'Add to cart',
                                  options: FFButtonOptions(
                                    height: 40,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 0, 40, 0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    color: Color(0xFFEAC441),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                        ),
                                    elevation: 3,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        height: 100,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '\$${valueOrDefault<String>(
                                FFAppState().selectedProduct.price.toString(),
                                '0',
                              )}',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF1B1B1B),
                                    fontSize: 20,
                                  ),
                            ),
                            ToggleIcon(
                              onPressed: () async {
                                setState(
                                    () => _model.isLiked = !_model.isLiked);
                              },
                              value: _model.isLiked,
                              onIcon: Icon(
                                Icons.favorite_sharp,
                                color: Color(0xFFFF2424),
                                size: 25.0,
                              ),
                              offIcon: Icon(
                                Icons.favorite_border,
                                color: Color(0xFF71665E),
                                size: 25.0,
                              ),
                            ),
                          ].divide(SizedBox(height: 20)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
