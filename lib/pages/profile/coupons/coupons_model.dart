import '/components/buttons/back_button/back_button_widget.dart';
import '/components/coupon_item/coupon_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'coupons_widget.dart' show CouponsWidget;
import 'package:flutter/material.dart';

class CouponsModel extends FlutterFlowModel<CouponsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for CouponItem component.
  late CouponItemModel couponItemModel1;
  // Model for CouponItem component.
  late CouponItemModel couponItemModel2;
  // Model for CouponItem component.
  late CouponItemModel couponItemModel3;
  // Model for CouponItem component.
  late CouponItemModel couponItemModel4;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    couponItemModel1 = createModel(context, () => CouponItemModel());
    couponItemModel2 = createModel(context, () => CouponItemModel());
    couponItemModel3 = createModel(context, () => CouponItemModel());
    couponItemModel4 = createModel(context, () => CouponItemModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    couponItemModel1.dispose();
    couponItemModel2.dispose();
    couponItemModel3.dispose();
    couponItemModel4.dispose();
  }
}
