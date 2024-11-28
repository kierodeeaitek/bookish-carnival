import '/components/buttons/back_button/back_button_widget.dart';
import '/components/message_list_item/message_list_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'messages_widget.dart' show MessagesWidget;
import 'package:flutter/material.dart';

class MessagesModel extends FlutterFlowModel<MessagesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for MessageListItem component.
  late MessageListItemModel messageListItemModel1;
  // Model for MessageListItem component.
  late MessageListItemModel messageListItemModel2;
  // Model for MessageListItem component.
  late MessageListItemModel messageListItemModel3;
  // Model for MessageListItem component.
  late MessageListItemModel messageListItemModel4;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    messageListItemModel1 = createModel(context, () => MessageListItemModel());
    messageListItemModel2 = createModel(context, () => MessageListItemModel());
    messageListItemModel3 = createModel(context, () => MessageListItemModel());
    messageListItemModel4 = createModel(context, () => MessageListItemModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    messageListItemModel1.dispose();
    messageListItemModel2.dispose();
    messageListItemModel3.dispose();
    messageListItemModel4.dispose();
  }
}
