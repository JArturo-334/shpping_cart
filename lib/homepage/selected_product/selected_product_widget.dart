import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'selected_product_model.dart';
export 'selected_product_model.dart';

class SelectedProductWidget extends StatefulWidget {
  const SelectedProductWidget({Key? key}) : super(key: key);

  @override
  _SelectedProductWidgetState createState() => _SelectedProductWidgetState();
}

class _SelectedProductWidgetState extends State<SelectedProductWidget> {
  late SelectedProductModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectedProductModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(6, 30, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: MediaQuery.sizeOf(context).height * 0.3,
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiary,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 100,
                          color: Color(0x33000000),
                          offset: Offset(0, -5),
                          spreadRadius: 5,
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.80, 0.00),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: ToggleIcon(
                      onPressed: () async {
                        setState(() => _model.isLiked = !_model.isLiked);
                      },
                      value: _model.isLiked,
                      onIcon: Icon(
                        Icons.favorite_sharp,
                        color: Color(0xFFFF2424),
                        size: 25.0,
                      ),
                      offIcon: Icon(
                        Icons.favorite_border,
                        color: Color(0xFF322920),
                        size: 25.0,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.12, -0.03),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('product');
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        valueOrDefault<String>(
                          FFAppState().selectedProduct.img,
                          'https://thelowcarbgrocery.blob.core.windows.net/images/_products/11000-ORIGO%20Strawberry2%20450.png',
                        ),
                        width: 120,
                        height: 150,
                        fit: BoxFit.fill,
                        alignment: Alignment(0.00, 0.00),
                        errorBuilder: (context, error, stackTrace) =>
                            Image.asset(
                          'assets/images/error_image.png',
                          width: 135,
                          height: 171,
                          fit: BoxFit.fill,
                          alignment: Alignment(0.00, 0.00),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, -0.30),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('product');
                      },
                      child: Container(
                        width: 121,
                        height: 100,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.00, -1.00),
                              child: Text(
                                valueOrDefault<String>(
                                  FFAppState().selectedProduct.title,
                                  'Apple chips',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFF5F5F5),
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.00, 0.00),
                                    child: Text(
                                      valueOrDefault<String>(
                                        '\$${valueOrDefault<String>(
                                          FFAppState()
                                              .selectedProduct
                                              .price
                                              .toString(),
                                          '0',
                                        )}',
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFF5F5F5),
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: Text(
                                      '/100gr',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFF5F5F5),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: RatingBarIndicator(
                                itemBuilder: (context, index) => Icon(
                                  Icons.star_rounded,
                                  color: Colors.white,
                                ),
                                direction: Axis.horizontal,
                                rating: valueOrDefault<double>(
                                  FFAppState()
                                      .selectedProduct
                                      .ranking
                                      .toDouble(),
                                  0.0,
                                ),
                                unratedColor: Color(0x46FFFFFF),
                                itemCount: 5,
                                itemSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.18, 0.51),
                  child: FFButtonWidget(
                    onPressed: () async {
                      setState(() {
                        FFAppState().addToCartList(ProductStruct.fromMap(
                            FFAppState().selectedProduct.toMap()));
                      });
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Product added',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).info,
                            ),
                          ),
                          duration: Duration(milliseconds: 1500),
                          backgroundColor: Color(0xFFFF9958),
                        ),
                      );
                    },
                    text: 'Add to cart',
                    icon: Icon(
                      Icons.shopping_cart_rounded,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      height: 45,
                      padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: Color(0xFFF5F5F5),
                      textStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFF060606),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
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
