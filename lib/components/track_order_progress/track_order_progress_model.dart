import '/components/status_toogle/status_toogle_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'track_order_progress_widget.dart' show TrackOrderProgressWidget;
import 'package:flutter/material.dart';

class TrackOrderProgressModel
    extends FlutterFlowModel<TrackOrderProgressWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for StatusToogle component.
  late StatusToogleModel statusToogleModel1;
  // Model for StatusToogle component.
  late StatusToogleModel statusToogleModel2;
  // Model for StatusToogle component.
  late StatusToogleModel statusToogleModel3;
  // Model for StatusToogle component.
  late StatusToogleModel statusToogleModel4;

  @override
  void initState(BuildContext context) {
    statusToogleModel1 = createModel(context, () => StatusToogleModel());
    statusToogleModel2 = createModel(context, () => StatusToogleModel());
    statusToogleModel3 = createModel(context, () => StatusToogleModel());
    statusToogleModel4 = createModel(context, () => StatusToogleModel());
  }

  @override
  void dispose() {
    statusToogleModel1.dispose();
    statusToogleModel2.dispose();
    statusToogleModel3.dispose();
    statusToogleModel4.dispose();
  }
}
