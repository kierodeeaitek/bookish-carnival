import '/components/add_credit_card/add_credit_card_widget.dart';
import '/components/buttons/back_button/back_button_widget.dart';
import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/components/payment_option_item/payment_option_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'payment_widget.dart' show PaymentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class PaymentModel extends FlutterFlowModel<PaymentWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for AddCreditCard component.
  late AddCreditCardModel addCreditCardModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Model for FullWidthButton component.
  late FullWidthButtonModel fullWidthButtonModel;
  // Model for PaymentOptionItem component.
  late PaymentOptionItemModel paymentOptionItemModel1;
  // Model for PaymentOptionItem component.
  late PaymentOptionItemModel paymentOptionItemModel2;
  // Model for PaymentOptionItem component.
  late PaymentOptionItemModel paymentOptionItemModel3;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    addCreditCardModel = createModel(context, () => AddCreditCardModel());
    fullWidthButtonModel = createModel(context, () => FullWidthButtonModel());
    paymentOptionItemModel1 =
        createModel(context, () => PaymentOptionItemModel());
    paymentOptionItemModel2 =
        createModel(context, () => PaymentOptionItemModel());
    paymentOptionItemModel3 =
        createModel(context, () => PaymentOptionItemModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    expandableExpandableController.dispose();
    addCreditCardModel.dispose();
    fullWidthButtonModel.dispose();
    paymentOptionItemModel1.dispose();
    paymentOptionItemModel2.dispose();
    paymentOptionItemModel3.dispose();
  }
}
