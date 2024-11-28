import '/components/order_item/order_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'orders_widget.dart' show OrdersWidget;
import 'package:flutter/material.dart';

class OrdersModel extends FlutterFlowModel<OrdersWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for OrderItem component.
  late OrderItemModel orderItemModel1;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel2;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel3;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel4;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel5;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel6;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel7;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel8;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel9;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel10;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel11;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel12;

  @override
  void initState(BuildContext context) {
    orderItemModel1 = createModel(context, () => OrderItemModel());
    orderItemModel2 = createModel(context, () => OrderItemModel());
    orderItemModel3 = createModel(context, () => OrderItemModel());
    orderItemModel4 = createModel(context, () => OrderItemModel());
    orderItemModel5 = createModel(context, () => OrderItemModel());
    orderItemModel6 = createModel(context, () => OrderItemModel());
    orderItemModel7 = createModel(context, () => OrderItemModel());
    orderItemModel8 = createModel(context, () => OrderItemModel());
    orderItemModel9 = createModel(context, () => OrderItemModel());
    orderItemModel10 = createModel(context, () => OrderItemModel());
    orderItemModel11 = createModel(context, () => OrderItemModel());
    orderItemModel12 = createModel(context, () => OrderItemModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    orderItemModel1.dispose();
    orderItemModel2.dispose();
    orderItemModel3.dispose();
    orderItemModel4.dispose();
    orderItemModel5.dispose();
    orderItemModel6.dispose();
    orderItemModel7.dispose();
    orderItemModel8.dispose();
    orderItemModel9.dispose();
    orderItemModel10.dispose();
    orderItemModel11.dispose();
    orderItemModel12.dispose();
  }
}
