import '/components/bottom_sheet_dragger/bottom_sheet_dragger_widget.dart';
import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/components/buttons/ind_width_dark_button/ind_width_dark_button_widget.dart';
import '/components/shipping_address_item/shipping_address_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shipping_address_widget.dart' show ShippingAddressWidget;
import 'package:flutter/material.dart';

class ShippingAddressModel extends FlutterFlowModel<ShippingAddressWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for BottomSheetDragger component.
  late BottomSheetDraggerModel bottomSheetDraggerModel;
  // Model for IndWidthDarkButton component.
  late IndWidthDarkButtonModel indWidthDarkButtonModel;
  // Model for ShippingAddressItem component.
  late ShippingAddressItemModel shippingAddressItemModel1;
  // Model for ShippingAddressItem component.
  late ShippingAddressItemModel shippingAddressItemModel2;
  // Model for ShippingAddressItem component.
  late ShippingAddressItemModel shippingAddressItemModel3;
  // Model for ShippingAddressItem component.
  late ShippingAddressItemModel shippingAddressItemModel4;
  // Model for FullWidthButton component.
  late FullWidthButtonModel fullWidthButtonModel;

  @override
  void initState(BuildContext context) {
    bottomSheetDraggerModel =
        createModel(context, () => BottomSheetDraggerModel());
    indWidthDarkButtonModel =
        createModel(context, () => IndWidthDarkButtonModel());
    shippingAddressItemModel1 =
        createModel(context, () => ShippingAddressItemModel());
    shippingAddressItemModel2 =
        createModel(context, () => ShippingAddressItemModel());
    shippingAddressItemModel3 =
        createModel(context, () => ShippingAddressItemModel());
    shippingAddressItemModel4 =
        createModel(context, () => ShippingAddressItemModel());
    fullWidthButtonModel = createModel(context, () => FullWidthButtonModel());
  }

  @override
  void dispose() {
    bottomSheetDraggerModel.dispose();
    indWidthDarkButtonModel.dispose();
    shippingAddressItemModel1.dispose();
    shippingAddressItemModel2.dispose();
    shippingAddressItemModel3.dispose();
    shippingAddressItemModel4.dispose();
    fullWidthButtonModel.dispose();
  }
}
