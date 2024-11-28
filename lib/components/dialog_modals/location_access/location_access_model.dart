import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/components/buttons/full_width_button_dark/full_width_button_dark_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'location_access_widget.dart' show LocationAccessWidget;
import 'package:flutter/material.dart';

class LocationAccessModel extends FlutterFlowModel<LocationAccessWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for FullWidthButton component.
  late FullWidthButtonModel fullWidthButtonModel;
  // Model for FullWidthButtonDark component.
  late FullWidthButtonDarkModel fullWidthButtonDarkModel;

  @override
  void initState(BuildContext context) {
    fullWidthButtonModel = createModel(context, () => FullWidthButtonModel());
    fullWidthButtonDarkModel =
        createModel(context, () => FullWidthButtonDarkModel());
  }

  @override
  void dispose() {
    fullWidthButtonModel.dispose();
    fullWidthButtonDarkModel.dispose();
  }
}
