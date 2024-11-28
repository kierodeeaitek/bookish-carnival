import '/components/buttons/ind_width_button/ind_width_button_widget.dart';
import '/components/buttons/ind_width_dark_button/ind_width_dark_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'confirmation_modal_widget.dart' show ConfirmationModalWidget;
import 'package:flutter/material.dart';

class ConfirmationModalModel extends FlutterFlowModel<ConfirmationModalWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IndWidthDarkButton component.
  late IndWidthDarkButtonModel indWidthDarkButtonModel;
  // Model for IndWidthButton component.
  late IndWidthButtonModel indWidthButtonModel;

  @override
  void initState(BuildContext context) {
    indWidthDarkButtonModel =
        createModel(context, () => IndWidthDarkButtonModel());
    indWidthButtonModel = createModel(context, () => IndWidthButtonModel());
  }

  @override
  void dispose() {
    indWidthDarkButtonModel.dispose();
    indWidthButtonModel.dispose();
  }
}
