import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cart_details_model.dart';
export 'cart_details_model.dart';

class CartDetailsWidget extends StatefulWidget {
  const CartDetailsWidget({Key? key}) : super(key: key);

  @override
  _CartDetailsWidgetState createState() => _CartDetailsWidgetState();
}

class _CartDetailsWidgetState extends State<CartDetailsWidget> {
  late CartDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartDetailsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${functions.getTotalItemsCart(FFAppState().cartList.toList()).toString()} items',
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Readex Pro',
                  color: Color(0xCAFFFFFF),
                ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.7,
            height: MediaQuery.sizeOf(context).height * 0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: FlutterFlowTheme.of(context).tertiary,
                width: 2,
              ),
            ),
            alignment: AlignmentDirectional(1.00, 0.00),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                  child: Text(
                    '\$${valueOrDefault<String>(
                      functions
                          .getTotalCart(FFAppState().cartList.toList())
                          .toString(),
                      '0.0',
                    )}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFFF5F5F5),
                          fontSize: 16.0,
                        ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Buy now',
                  options: FFButtonOptions(
                    height: 40,
                    padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).tertiary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
