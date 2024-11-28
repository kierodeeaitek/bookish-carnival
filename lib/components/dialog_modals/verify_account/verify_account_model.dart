import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'verify_account_widget.dart' show VerifyAccountWidget;
import 'package:flutter/material.dart';

class VerifyAccountModel extends FlutterFlowModel<VerifyAccountWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Model for FullWidthButton component.
  late FullWidthButtonModel fullWidthButtonModel;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
    fullWidthButtonModel = createModel(context, () => FullWidthButtonModel());
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
    fullWidthButtonModel.dispose();
  }
}
