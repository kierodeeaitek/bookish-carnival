import '/components/product_item/product_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'wishlist_widget.dart' show WishlistWidget;
import 'package:flutter/material.dart';

class WishlistModel extends FlutterFlowModel<WishlistWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
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

  @override
  void initState(BuildContext context) {
    productItemModel1 = createModel(context, () => ProductItemModel());
    productItemModel2 = createModel(context, () => ProductItemModel());
    productItemModel3 = createModel(context, () => ProductItemModel());
    productItemModel4 = createModel(context, () => ProductItemModel());
    productItemModel5 = createModel(context, () => ProductItemModel());
    productItemModel6 = createModel(context, () => ProductItemModel());
    productItemModel7 = createModel(context, () => ProductItemModel());
  }

  @override
  void dispose() {
    productItemModel1.dispose();
    productItemModel2.dispose();
    productItemModel3.dispose();
    productItemModel4.dispose();
    productItemModel5.dispose();
    productItemModel6.dispose();
    productItemModel7.dispose();
  }
}
