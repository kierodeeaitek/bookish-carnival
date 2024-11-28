import '/components/buttons/back_button/back_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'terms_and_policies_widget.dart' show TermsAndPoliciesWidget;
import 'package:flutter/material.dart';

class TermsAndPoliciesModel extends FlutterFlowModel<TermsAndPoliciesWidget> {
  ///  Local state fields for this page.

  bool fav = false;

  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
  }
}
