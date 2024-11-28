import '/components/buttons/back_button/back_button_widget.dart';
import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/components/check_out_order_list_item/check_out_order_list_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'check_out_widget.dart' show CheckOutWidget;
import 'package:flutter/material.dart';

class CheckOutModel extends FlutterFlowModel<CheckOutWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for CheckOutOrderListItem component.
  late CheckOutOrderListItemModel checkOutOrderListItemModel1;
  // Model for CheckOutOrderListItem component.
  late CheckOutOrderListItemModel checkOutOrderListItemModel2;
  // Model for CheckOutOrderListItem component.
  late CheckOutOrderListItemModel checkOutOrderListItemModel3;
  // Model for CheckOutOrderListItem component.
  late CheckOutOrderListItemModel checkOutOrderListItemModel4;
  // Model for FullWidthButton component.
  late FullWidthButtonModel fullWidthButtonModel;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    checkOutOrderListItemModel1 =
        createModel(context, () => CheckOutOrderListItemModel());
    checkOutOrderListItemModel2 =
        createModel(context, () => CheckOutOrderListItemModel());
    checkOutOrderListItemModel3 =
        createModel(context, () => CheckOutOrderListItemModel());
    checkOutOrderListItemModel4 =
        createModel(context, () => CheckOutOrderListItemModel());
    fullWidthButtonModel = createModel(context, () => FullWidthButtonModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    checkOutOrderListItemModel1.dispose();
    checkOutOrderListItemModel2.dispose();
    checkOutOrderListItemModel3.dispose();
    checkOutOrderListItemModel4.dispose();
    fullWidthButtonModel.dispose();
  }
}
