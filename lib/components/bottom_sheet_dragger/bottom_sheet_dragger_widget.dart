import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bottom_sheet_dragger_model.dart';
export 'bottom_sheet_dragger_model.dart';

class BottomSheetDraggerWidget extends StatefulWidget {
  const BottomSheetDraggerWidget({super.key});

  @override
  State<BottomSheetDraggerWidget> createState() =>
      _BottomSheetDraggerWidgetState();
}

class _BottomSheetDraggerWidgetState extends State<BottomSheetDraggerWidget> {
  late BottomSheetDraggerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomSheetDraggerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
      child: Container(
        width: 40.0,
        height: 4.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).alternate,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
