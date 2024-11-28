import '/components/buttons/back_button/back_button_widget.dart';
import '/components/buttons/search_icon_button/search_icon_button_widget.dart';
import '/components/product_item/product_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'single_category_widget.dart' show SingleCategoryWidget;
import 'package:flutter/material.dart';

class SingleCategoryModel extends FlutterFlowModel<SingleCategoryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for SearchIconButton component.
  late SearchIconButtonModel searchIconButtonModel;
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
    backButtonModel = createModel(context, () => BackButtonModel());
    searchIconButtonModel = createModel(context, () => SearchIconButtonModel());
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
    backButtonModel.dispose();
    searchIconButtonModel.dispose();
    productItemModel1.dispose();
    productItemModel2.dispose();
    productItemModel3.dispose();
    productItemModel4.dispose();
    productItemModel5.dispose();
    productItemModel6.dispose();
    productItemModel7.dispose();
  }
}
