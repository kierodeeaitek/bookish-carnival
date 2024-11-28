import '/components/buttons/ind_width_button/ind_width_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'coupon_item_widget.dart' show CouponItemWidget;
import 'package:flutter/material.dart';

class CouponItemModel extends FlutterFlowModel<CouponItemWidget> {
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
