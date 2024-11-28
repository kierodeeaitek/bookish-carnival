import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'success_modal_widget.dart' show SuccessModalWidget;
import 'package:flutter/material.dart';

class SuccessModalModel extends FlutterFlowModel<SuccessModalWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for FullWidthButton component.
  late FullWidthButtonModel fullWidthButtonModel;

  @override
  void initState(BuildContext context) {
    fullWidthButtonModel = createModel(context, () => FullWidthButtonModel());
  }

  @override
  void dispose() {
    fullWidthButtonModel.dispose();
  }
}
