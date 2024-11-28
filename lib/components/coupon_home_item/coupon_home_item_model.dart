import '/components/buttons/ind_width_button/ind_width_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'coupon_home_item_widget.dart' show CouponHomeItemWidget;
import 'package:flutter/material.dart';

class CouponHomeItemModel extends FlutterFlowModel<CouponHomeItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IndWidthButton component.
  late IndWidthButtonModel indWidthButtonModel;

  @override
  void initState(BuildContext context) {
    indWidthButtonModel = createModel(context, () => IndWidthButtonModel());
  }

  @override
  void dispose() {
    indWidthButtonModel.dispose();
  }
}
