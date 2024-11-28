import '/components/buttons/back_button/back_button_widget.dart';
import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/components/product_item/product_item_widget.dart';
import '/components/review_item/review_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'all_reviews_widget.dart' show AllReviewsWidget;
import 'package:flutter/material.dart';

class AllReviewsModel extends FlutterFlowModel<AllReviewsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for ReviewItem component.
  late ReviewItemModel reviewItemModel1;
  // Model for ReviewItem component.
  late ReviewItemModel reviewItemModel2;
  // Model for ReviewItem component.
  late ReviewItemModel reviewItemModel3;
  // Model for ReviewItem component.
  late ReviewItemModel reviewItemModel4;
  // Model for ReviewItem component.
  late ReviewItemModel reviewItemModel5;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for FullWidthButton component.
  late FullWidthButtonModel fullWidthButtonModel;
  // Model for ProductItem component.
  late ProductItemModel productItemModel1;
  // Model for ProductItem component.
  late ProductItemModel productItemModel2;
  // Model for ProductItem component.
  late ProductItemModel productItemModel3;
  // Model for ProductItem component.
  late ProductItemModel productItemModel4;
  // Model for ProductItem component.
  late ProductItemModel productItemModel5;
  // Model for ProductItem component.
  late ProductItemModel productItemModel6;
  // Model for ProductItem component.
  late ProductItemModel productItemModel7;
  // Model for ProductItem component.
  late ProductItemModel productItemModel8;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    reviewItemModel1 = createModel(context, () => ReviewItemModel());
    reviewItemModel2 = createModel(context, () => ReviewItemModel());
    reviewItemModel3 = createModel(context, () => ReviewItemModel());
    reviewItemModel4 = createModel(context, () => ReviewItemModel());
    reviewItemModel5 = createModel(context, () => ReviewItemModel());
    fullWidthButtonModel = createModel(context, () => FullWidthButtonModel());
    productItemModel1 = createModel(context, () => ProductItemModel());
    productItemModel2 = createModel(context, () => ProductItemModel());
    productItemModel3 = createModel(context, () => ProductItemModel());
    productItemModel4 = createModel(context, () => ProductItemModel());
    productItemModel5 = createModel(context, () => ProductItemModel());
    productItemModel6 = createModel(context, () => ProductItemModel());
    productItemModel7 = createModel(context, () => ProductItemModel());
    productItemModel8 = createModel(context, () => ProductItemModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    reviewItemModel1.dispose();
    reviewItemModel2.dispose();
    reviewItemModel3.dispose();
    reviewItemModel4.dispose();
    reviewItemModel5.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    fullWidthButtonModel.dispose();
    productItemModel1.dispose();
    productItemModel2.dispose();
    productItemModel3.dispose();
    productItemModel4.dispose();
    productItemModel5.dispose();
    productItemModel6.dispose();
    productItemModel7.dispose();
    productItemModel8.dispose();
  }
}
