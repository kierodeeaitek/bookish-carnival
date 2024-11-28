import '/components/buttons/back_button/back_button_widget.dart';
import '/components/buttons/blue_icon_button_big/blue_icon_button_big_widget.dart';
import '/components/product_item/product_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_result_widget.dart' show SearchResultWidget;
import 'package:flutter/material.dart';

class SearchResultModel extends FlutterFlowModel<SearchResultWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for BlueIconButtonBig component.
  late BlueIconButtonBigModel blueIconButtonBigModel;
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
    blueIconButtonBigModel =
        createModel(context, () => BlueIconButtonBigModel());
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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    blueIconButtonBigModel.dispose();
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
