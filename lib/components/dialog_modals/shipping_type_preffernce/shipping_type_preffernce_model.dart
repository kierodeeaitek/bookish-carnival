import '/components/bottom_sheet_dragger/bottom_sheet_dragger_widget.dart';
import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/components/shipping_type/shipping_type_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shipping_type_preffernce_widget.dart' show ShippingTypePreffernceWidget;
import 'package:flutter/material.dart';

class ShippingTypePreffernceModel
    extends FlutterFlowModel<ShippingTypePreffernceWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for BottomSheetDragger component.
  late BottomSheetDraggerModel bottomSheetDraggerModel;
  // Model for ShippingType component.
  late ShippingTypeModel shippingTypeModel1;
  // Model for ShippingType component.
  late ShippingTypeModel shippingTypeModel2;
  // Model for ShippingType component.
  late ShippingTypeModel shippingTypeModel3;
  // Model for ShippingType component.
  late ShippingTypeModel shippingTypeModel4;
  // Model for FullWidthButton component.
  late FullWidthButtonModel fullWidthButtonModel;

  @override
  void initState(BuildContext context) {
    bottomSheetDraggerModel =
        createModel(context, () => BottomSheetDraggerModel());
    shippingTypeModel1 = createModel(context, () => ShippingTypeModel());
    shippingTypeModel2 = createModel(context, () => ShippingTypeModel());
    shippingTypeModel3 = createModel(context, () => ShippingTypeModel());
    shippingTypeModel4 = createModel(context, () => ShippingTypeModel());
    fullWidthButtonModel = createModel(context, () => FullWidthButtonModel());
  }

  @override
  void dispose() {
    bottomSheetDraggerModel.dispose();
    shippingTypeModel1.dispose();
    shippingTypeModel2.dispose();
    shippingTypeModel3.dispose();
    shippingTypeModel4.dispose();
    fullWidthButtonModel.dispose();
  }
}
