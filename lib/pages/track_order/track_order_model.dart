import '/components/buttons/back_button/back_button_widget.dart';
import '/components/buttons/dark_icon_button_small/dark_icon_button_small_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'track_order_widget.dart' show TrackOrderWidget;
import 'package:flutter/material.dart';

class TrackOrderModel extends FlutterFlowModel<TrackOrderWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Model for DarkIconButtonSmall component.
  late DarkIconButtonSmallModel darkIconButtonSmallModel1;
  // Model for DarkIconButtonSmall component.
  late DarkIconButtonSmallModel darkIconButtonSmallModel2;
  // Model for BackButton component.
  late BackButtonModel backButtonModel;

  @override
  void initState(BuildContext context) {
    darkIconButtonSmallModel1 =
        createModel(context, () => DarkIconButtonSmallModel());
    darkIconButtonSmallModel2 =
        createModel(context, () => DarkIconButtonSmallModel());
    backButtonModel = createModel(context, () => BackButtonModel());
  }

  @override
  void dispose() {
    darkIconButtonSmallModel1.dispose();
    darkIconButtonSmallModel2.dispose();
    backButtonModel.dispose();
  }
}
