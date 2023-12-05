import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/products_page/product_view_actions/product_view_actions_widget.dart';
import 'product_widget.dart' show ProductWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductModel extends FlutterFlowModel<ProductWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  // Model for productViewActions component.
  late ProductViewActionsModel productViewActionsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    productViewActionsModel =
        createModel(context, () => ProductViewActionsModel());
  }

  void dispose() {
    unfocusNode.dispose();
    productViewActionsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
