import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'about_us_widget.dart' show AboutUsWidget;
import 'package:flutter/material.dart';

class AboutUsModel extends FlutterFlowModel<AboutUsWidget> {
  ///  State fields for stateful widgets in this page.

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
