import '/components/buttons/dark_icon_button_small/dark_icon_button_small_widget.dart';
import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/components/buttons/ind_width_button/ind_width_button_widget.dart';
import '/components/order_item/order_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'leave_review_widget.dart' show LeaveReviewWidget;
import 'package:flutter/material.dart';

class LeaveReviewModel extends FlutterFlowModel<LeaveReviewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DarkIconButtonSmall component.
  late DarkIconButtonSmallModel darkIconButtonSmallModel;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
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
    darkIconButtonSmallModel =
        createModel(context, () => DarkIconButtonSmallModel());
    orderItemModel = createModel(context, () => OrderItemModel());
    indWidthButtonModel = createModel(context, () => IndWidthButtonModel());
    fullWidthButtonModel = createModel(context, () => FullWidthButtonModel());
  }

  @override
  void dispose() {
    darkIconButtonSmallModel.dispose();
    orderItemModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    indWidthButtonModel.dispose();
    fullWidthButtonModel.dispose();
  }
}
