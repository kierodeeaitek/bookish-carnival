import '/components/buttons/back_button/back_button_widget.dart';
import '/components/buttons/blue_icon_button/blue_icon_button_widget.dart';
import '/components/reciever_msg_item_copy/reciever_msg_item_copy_widget.dart';
import '/components/sender_msg_item/sender_msg_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for SenderMsgItem component.
  late SenderMsgItemModel senderMsgItemModel1;
  // Model for RecieverMsgItemCopy component.
  late RecieverMsgItemCopyModel recieverMsgItemCopyModel1;
  // Model for SenderMsgItem component.
  late SenderMsgItemModel senderMsgItemModel2;
  // Model for RecieverMsgItemCopy component.
  late RecieverMsgItemCopyModel recieverMsgItemCopyModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for BlueIconButton component.
  late BlueIconButtonModel blueIconButtonModel;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    senderMsgItemModel1 = createModel(context, () => SenderMsgItemModel());
    recieverMsgItemCopyModel1 =
        createModel(context, () => RecieverMsgItemCopyModel());
    senderMsgItemModel2 = createModel(context, () => SenderMsgItemModel());
    recieverMsgItemCopyModel2 =
        createModel(context, () => RecieverMsgItemCopyModel());
    blueIconButtonModel = createModel(context, () => BlueIconButtonModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    senderMsgItemModel1.dispose();
    recieverMsgItemCopyModel1.dispose();
    senderMsgItemModel2.dispose();
    recieverMsgItemCopyModel2.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    blueIconButtonModel.dispose();
  }
}
