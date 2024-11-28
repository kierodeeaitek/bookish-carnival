import '/components/counter/counter_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_item_widget.dart' show CartItemWidget;
import 'package:flutter/material.dart';

class CartItemModel extends FlutterFlowModel<CartItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Counter component.
  late CounterModel counterModel;

  @override
  void initState(BuildContext context) {
    counterModel = createModel(context, () => CounterModel());
  }

  @override
  void dispose() {
    counterModel.dispose();
  }
}
