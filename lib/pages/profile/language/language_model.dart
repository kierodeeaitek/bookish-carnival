import '/components/buttons/back_button/back_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'language_widget.dart' show LanguageWidget;
import 'package:flutter/material.dart';

class LanguageModel extends FlutterFlowModel<LanguageWidget> {
  ///  Local state fields for this page.

  bool fav = false;

  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
  }
}
