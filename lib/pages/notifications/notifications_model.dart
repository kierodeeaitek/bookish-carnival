import '/components/buttons/back_button/back_button_widget.dart';
import '/components/notification_item/notification_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notifications_widget.dart' show NotificationsWidget;
import 'package:flutter/material.dart';

class NotificationsModel extends FlutterFlowModel<NotificationsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for NotificationItem component.
  late NotificationItemModel notificationItemModel1;
  // Model for NotificationItem component.
  late NotificationItemModel notificationItemModel2;
  // Model for NotificationItem component.
  late NotificationItemModel notificationItemModel3;
  // Model for NotificationItem component.
  late NotificationItemModel notificationItemModel4;
  // Model for NotificationItem component.
  late NotificationItemModel notificationItemModel5;
  // Model for NotificationItem component.
  late NotificationItemModel notificationItemModel6;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    notificationItemModel1 =
        createModel(context, () => NotificationItemModel());
    notificationItemModel2 =
        createModel(context, () => NotificationItemModel());
    notificationItemModel3 =
        createModel(context, () => NotificationItemModel());
    notificationItemModel4 =
        createModel(context, () => NotificationItemModel());
    notificationItemModel5 =
        createModel(context, () => NotificationItemModel());
    notificationItemModel6 =
        createModel(context, () => NotificationItemModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    notificationItemModel1.dispose();
    notificationItemModel2.dispose();
    notificationItemModel3.dispose();
    notificationItemModel4.dispose();
    notificationItemModel5.dispose();
    notificationItemModel6.dispose();
  }
}
