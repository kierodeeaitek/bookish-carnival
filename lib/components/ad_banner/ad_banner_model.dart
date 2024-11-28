import '/components/buttons/ind_width_button/ind_width_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ad_banner_widget.dart' show AdBannerWidget;
import 'package:flutter/material.dart';

class AdBannerModel extends FlutterFlowModel<AdBannerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for IndWidthButton component.
  late IndWidthButtonModel indWidthButtonModel;

  @override
  void initState(BuildContext context) {
    indWidthButtonModel = createModel(context, () => IndWidthButtonModel());
  }

  @override
  void dispose() {
    indWidthButtonModel.dispose();
  }
}
