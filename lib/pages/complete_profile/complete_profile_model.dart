import '/components/buttons/blue_icon_button/blue_icon_button_widget.dart';
import '/components/buttons/dark_icon_button_small/dark_icon_button_small_widget.dart';
import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'complete_profile_widget.dart' show CompleteProfileWidget;
import 'package:flutter/material.dart';

class CompleteProfileModel extends FlutterFlowModel<CompleteProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DarkIconButtonSmall component.
  late DarkIconButtonSmallModel darkIconButtonSmallModel;
  // Model for BlueIconButton component.
  late BlueIconButtonModel blueIconButtonModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for FullWidthButton component.
  late FullWidthButtonModel fullWidthButtonModel;

  @override
  void initState(BuildContext context) {
    darkIconButtonSmallModel =
        createModel(context, () => DarkIconButtonSmallModel());
    blueIconButtonModel = createModel(context, () => BlueIconButtonModel());
    fullWidthButtonModel = createModel(context, () => FullWidthButtonModel());
  }

  @override
  void dispose() {
    darkIconButtonSmallModel.dispose();
    blueIconButtonModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    fullWidthButtonModel.dispose();
  }
}
