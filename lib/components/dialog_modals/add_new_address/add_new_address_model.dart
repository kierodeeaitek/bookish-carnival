import '/components/buttons/ind_width_button/ind_width_button_widget.dart';
import '/components/buttons/ind_width_dark_button/ind_width_dark_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_new_address_widget.dart' show AddNewAddressWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AddNewAddressModel extends FlutterFlowModel<AddNewAddressWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = const FFPlace();
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    expandableExpandableController.dispose();
    indWidthDarkButtonModel.dispose();
    indWidthButtonModel.dispose();
  }
}
