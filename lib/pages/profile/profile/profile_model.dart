import '/components/dialog_modals/modal_background/modal_background_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  Local state fields for this page.

  bool address = false;

  ///  State fields for stateful widgets in this page.

  // Model for ModalBackground component.
  late ModalBackgroundModel modalBackgroundModel;

  @override
  void initState(BuildContext context) {
    modalBackgroundModel = createModel(context, () => ModalBackgroundModel());
  }

  @override
  void dispose() {
    modalBackgroundModel.dispose();
  }
}
