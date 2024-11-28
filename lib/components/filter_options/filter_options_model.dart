import '/components/bottom_sheet_dragger/bottom_sheet_dragger_widget.dart';
import '/components/buttons/ind_width_button/ind_width_button_widget.dart';
import '/components/buttons/ind_width_dark_button/ind_width_dark_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'filter_options_widget.dart' show FilterOptionsWidget;
import 'package:flutter/material.dart';

class FilterOptionsModel extends FlutterFlowModel<FilterOptionsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for BottomSheetDragger component.
  late BottomSheetDraggerModel bottomSheetDraggerModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController3;
  String? get choiceChipsValue3 =>
      choiceChipsValueController3?.value?.firstOrNull;
  set choiceChipsValue3(String? val) =>
      choiceChipsValueController3?.value = val != null ? [val] : [];
  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // Model for IndWidthDarkButton component.
  late IndWidthDarkButtonModel indWidthDarkButtonModel;
  // Model for IndWidthButton component.
  late IndWidthButtonModel indWidthButtonModel;

  @override
  void initState(BuildContext context) {
    bottomSheetDraggerModel =
        createModel(context, () => BottomSheetDraggerModel());
    indWidthDarkButtonModel =
        createModel(context, () => IndWidthDarkButtonModel());
    indWidthButtonModel = createModel(context, () => IndWidthButtonModel());
  }

  @override
  void dispose() {
    bottomSheetDraggerModel.dispose();
    indWidthDarkButtonModel.dispose();
    indWidthButtonModel.dispose();
  }
}
