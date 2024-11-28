import '/components/buttons/dark_icon_button_big/dark_icon_button_big_widget.dart';
import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textController3Validator;
  // Model for FullWidthButton component.
  late FullWidthButtonModel fullWidthButtonModel;
  // Model for DarkIconButtonBig component.
  late DarkIconButtonBigModel darkIconButtonBigModel1;
  // Model for DarkIconButtonBig component.
  late DarkIconButtonBigModel darkIconButtonBigModel2;
  // Model for DarkIconButtonBig component.
  late DarkIconButtonBigModel darkIconButtonBigModel3;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    fullWidthButtonModel = createModel(context, () => FullWidthButtonModel());
    darkIconButtonBigModel1 =
        createModel(context, () => DarkIconButtonBigModel());
    darkIconButtonBigModel2 =
        createModel(context, () => DarkIconButtonBigModel());
    darkIconButtonBigModel3 =
        createModel(context, () => DarkIconButtonBigModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    fullWidthButtonModel.dispose();
    darkIconButtonBigModel1.dispose();
    darkIconButtonBigModel2.dispose();
    darkIconButtonBigModel3.dispose();
  }
}
