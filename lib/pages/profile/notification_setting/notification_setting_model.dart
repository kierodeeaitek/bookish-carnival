import '/components/buttons/back_button/back_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notification_setting_widget.dart' show NotificationSettingWidget;
import 'package:flutter/material.dart';

class NotificationSettingModel
    extends FlutterFlowModel<NotificationSettingWidget> {
  ///  Local state fields for this page.

  bool fav = false;

  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
  }
}
