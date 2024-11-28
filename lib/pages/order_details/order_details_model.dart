import '/components/buttons/dark_icon_button_small/dark_icon_button_small_widget.dart';
import '/components/buttons/ind_width_button/ind_width_button_widget.dart';
import '/components/buttons/ind_width_dark_button/ind_width_dark_button_widget.dart';
import '/components/check_out_order_list_item/check_out_order_list_item_widget.dart';
import '/components/track_order_progress/track_order_progress_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_details_widget.dart' show OrderDetailsWidget;
import 'package:flutter/material.dart';

class OrderDetailsModel extends FlutterFlowModel<OrderDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DarkIconButtonSmall component.
  late DarkIconButtonSmallModel darkIconButtonSmallModel;
  // Model for CheckOutOrderListItem component.
  late CheckOutOrderListItemModel checkOutOrderListItemModel1;
  // Model for CheckOutOrderListItem component.
  late CheckOutOrderListItemModel checkOutOrderListItemModel2;
  // Model for CheckOutOrderListItem component.
  late CheckOutOrderListItemModel checkOutOrderListItemModel3;
  // Model for CheckOutOrderListItem component.
  late CheckOutOrderListItemModel checkOutOrderListItemModel4;
  // Model for TrackOrderProgress component.
  late TrackOrderProgressModel trackOrderProgressModel;
  // Model for IndWidthDarkButton component.
  late IndWidthDarkButtonModel indWidthDarkButtonModel;
  // Model for IndWidthButton component.
  late IndWidthButtonModel indWidthButtonModel;

  @override
  void initState(BuildContext context) {
    darkIconButtonSmallModel =
        createModel(context, () => DarkIconButtonSmallModel());
    checkOutOrderListItemModel1 =
        createModel(context, () => CheckOutOrderListItemModel());
    checkOutOrderListItemModel2 =
        createModel(context, () => CheckOutOrderListItemModel());
    checkOutOrderListItemModel3 =
        createModel(context, () => CheckOutOrderListItemModel());
    checkOutOrderListItemModel4 =
        createModel(context, () => CheckOutOrderListItemModel());
    trackOrderProgressModel =
        createModel(context, () => TrackOrderProgressModel());
    indWidthDarkButtonModel =
        createModel(context, () => IndWidthDarkButtonModel());
    indWidthButtonModel = createModel(context, () => IndWidthButtonModel());
  }

  @override
  void dispose() {
    darkIconButtonSmallModel.dispose();
    checkOutOrderListItemModel1.dispose();
    checkOutOrderListItemModel2.dispose();
    checkOutOrderListItemModel3.dispose();
    checkOutOrderListItemModel4.dispose();
    trackOrderProgressModel.dispose();
    indWidthDarkButtonModel.dispose();
    indWidthButtonModel.dispose();
  }
}
