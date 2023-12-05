import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/homepage/category_item_fruit/category_item_fruit_widget.dart';
import '/homepage/category_item_nuts/category_item_nuts_widget.dart';
import '/homepage/home_products_slider/home_products_slider_widget.dart';
import '/homepage/selected_product/selected_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF5F5F5),
        drawer: Drawer(
          width: MediaQuery.sizeOf(context).width * 0.85,
          elevation: 1,
          child: Container(
            color: Color.fromARGB(255, 201, 98, 67),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://picsum.photos/seed/435/600',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hellen',
                        style: FlutterFlowTheme.of(context).titleLarge,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'hellen.ma@mail.com',
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('HomePage');
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  color: Color(
                                      0xFFF5F5F5), // Set your border color here
                                  width: 1.0, // Set the width of the top border
                                ),
                                bottom: BorderSide(
                                  color: Color(
                                      0xFFF5F5F5), // Set your border color here
                                  width:
                                      1.0, // Set the width of the bottom border
                                ),
                              ),
                            ),
                            child: ListTile(
                              leading: const Icon(
                                Icons.home_rounded,
                              ),
                              title: Text(
                                'Home',
                                style: FlutterFlowTheme.of(context).titleMedium,
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: true,
                            ),
                          )),
                      InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('cart');
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(
                                      0xFFF5F5F5), // Set your border color here
                                  width:
                                      1.0, // Set the width of the bottom border
                                ),
                              ),
                            ),
                            child: ListTile(
                              leading: const Icon(
                                Icons.shopping_cart_rounded,
                              ),
                              title: Text(
                                'Cart',
                                style: FlutterFlowTheme.of(context).titleMedium,
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: true,
                            ),
                          )),
                      InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('addNewProduct');
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(
                                      0xFFF5F5F5), // Set your border color here
                                  width:
                                      1.0, // Set the width of the bottom border
                                ),
                              ),
                            ),
                            child: ListTile(
                              leading: const Icon(
                                Icons.add,
                              ),
                              title: Text(
                                'Add new product',
                                style: FlutterFlowTheme.of(context).titleMedium,
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              dense: true,
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            context.pushNamed(
              'addNewProduct',
              extra: <String, dynamic>{
                kTransitionInfoKey: const TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 200),
                ),
              },
            );
          },
          backgroundColor: const Color(0xFFFF9958),
          elevation: 0.0,
          child: Icon(
            Icons.add,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF5F5F5),
          iconTheme: const IconThemeData(color: Color(0xFF1B1B1B)),
          automaticallyImplyLeading: true,
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('cart');
                },
                child: const Icon(
                  Icons.shopping_cart_rounded,
                  color: Color(0xFF57636C),
                  size: 24,
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Hi, Hellen!',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Readex Pro',
                              color: const Color(0xFF57636C),
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'What\'s today\'s taste? 😋',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Outfit',
                              color: const Color(0xFF060606),
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.categoryItemFruitModel,
                      updateCallback: () => setState(() {}),
                      child: const CategoryItemFruitWidget(),
                    ),
                    wrapWithModel(
                      model: _model.categoryItemNutsModel,
                      updateCallback: () => setState(() {}),
                      child: const CategoryItemNutsWidget(),
                    ),
                  ].divide(const SizedBox(width: 20.0)),
                ),
                wrapWithModel(
                  model: _model.selectedProductModel,
                  updateCallback: () => setState(() {}),
                  child: const SelectedProductWidget(),
                ),
                Flexible(
                  child: wrapWithModel(
                    model: _model.homeProductsSliderModel,
                    updateCallback: () => setState(() {}),
                    child: const HomeProductsSliderWidget(),
                  ),
                ),
              ].divide(const SizedBox(height: 15.0)),
            ),
          ),
        ),
      ),
    );
  }
}
