import '/components/buttons/back_button/back_button_widget.dart';
import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/components/buttons/ind_width_button/ind_width_button_widget.dart';
import '/components/cart_item/cart_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_widget.dart' show CartWidget;
import 'package:flutter/material.dart';

class CartModel extends FlutterFlowModel<CartWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for CartItem component.
  late CartItemModel cartItemModel1;
  // Model for CartItem component.
  late CartItemModel cartItemModel2;
  // Model for CartItem component.
  late CartItemModel cartItemModel3;
  // Model for CartItem component.
  late CartItemModel cartItemModel4;
  // Model for CartItem component.
  late CartItemModel cartItemModel5;
  // Model for CartItem component.
  late CartItemModel cartItemModel6;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for IndWidthButton component.
  late IndWidthButtonModel indWidthButtonModel;
  // Model for FullWidthButton component.
  late FullWidthButtonModel fullWidthButtonModel;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    cartItemModel1 = createModel(context, () => CartItemModel());
    cartItemModel2 = createModel(context, () => CartItemModel());
    cartItemModel3 = createModel(context, () => CartItemModel());
    cartItemModel4 = createModel(context, () => CartItemModel());
    cartItemModel5 = createModel(context, () => CartItemModel());
    cartItemModel6 = createModel(context, () => CartItemModel());
    indWidthButtonModel = createModel(context, () => IndWidthButtonModel());
    fullWidthButtonModel = createModel(context, () => FullWidthButtonModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    cartItemModel1.dispose();
    cartItemModel2.dispose();
    cartItemModel3.dispose();
    cartItemModel4.dispose();
    cartItemModel5.dispose();
    cartItemModel6.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    indWidthButtonModel.dispose();
    fullWidthButtonModel.dispose();
  }
}
