import '/components/buttons/back_button/back_button_widget.dart';
import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/components/buttons/ind_width_button/ind_width_button_widget.dart';
import '/components/color_item/color_item_widget.dart';
import '/components/product_item/product_item_widget.dart';
import '/components/review_item/review_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_details_widget.dart' show ProductDetailsWidget;
import 'package:flutter/material.dart';

class ProductDetailsModel extends FlutterFlowModel<ProductDetailsWidget> {
  ///  Local state fields for this page.

  bool fav = false;

  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for colorItem component.
  late ColorItemModel colorItemModel1;
  // Model for colorItem component.
  late ColorItemModel colorItemModel2;
  // Model for colorItem component.
  late ColorItemModel colorItemModel3;
  // Model for colorItem component.
  late ColorItemModel colorItemModel4;
  // Model for colorItem component.
  late ColorItemModel colorItemModel5;
  // Model for colorItem component.
  late ColorItemModel colorItemModel6;
  // Model for colorItem component.
  late ColorItemModel colorItemModel7;
  // Model for ReviewItem component.
  late ReviewItemModel reviewItemModel1;
  // Model for ReviewItem component.
  late ReviewItemModel reviewItemModel2;
  // Model for ReviewItem component.
  late ReviewItemModel reviewItemModel3;
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
  // Model for IndWidthButton component.
  late IndWidthButtonModel indWidthButtonModel;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    colorItemModel1 = createModel(context, () => ColorItemModel());
    colorItemModel2 = createModel(context, () => ColorItemModel());
    colorItemModel3 = createModel(context, () => ColorItemModel());
    colorItemModel4 = createModel(context, () => ColorItemModel());
    colorItemModel5 = createModel(context, () => ColorItemModel());
    colorItemModel6 = createModel(context, () => ColorItemModel());
    colorItemModel7 = createModel(context, () => ColorItemModel());
    reviewItemModel1 = createModel(context, () => ReviewItemModel());
    reviewItemModel2 = createModel(context, () => ReviewItemModel());
    reviewItemModel3 = createModel(context, () => ReviewItemModel());
    fullWidthButtonModel = createModel(context, () => FullWidthButtonModel());
    productItemModel1 = createModel(context, () => ProductItemModel());
    productItemModel2 = createModel(context, () => ProductItemModel());
    productItemModel3 = createModel(context, () => ProductItemModel());
    productItemModel4 = createModel(context, () => ProductItemModel());
    productItemModel5 = createModel(context, () => ProductItemModel());
    productItemModel6 = createModel(context, () => ProductItemModel());
    productItemModel7 = createModel(context, () => ProductItemModel());
    productItemModel8 = createModel(context, () => ProductItemModel());
    indWidthButtonModel = createModel(context, () => IndWidthButtonModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    colorItemModel1.dispose();
    colorItemModel2.dispose();
    colorItemModel3.dispose();
    colorItemModel4.dispose();
    colorItemModel5.dispose();
    colorItemModel6.dispose();
    colorItemModel7.dispose();
    reviewItemModel1.dispose();
    reviewItemModel2.dispose();
    reviewItemModel3.dispose();
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
    indWidthButtonModel.dispose();
  }
}
