import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'status_toogle_model.dart';
export 'status_toogle_model.dart';

class StatusToogleWidget extends StatefulWidget {
  const StatusToogleWidget({super.key});

  @override
  State<StatusToogleWidget> createState() => _StatusToogleWidgetState();
}

class _StatusToogleWidgetState extends State<StatusToogleWidget> {
  late StatusToogleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusToogleModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30.0,
      height: 30.0,
      child: Stack(
        children: [
          Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
              shape: BoxShape.circle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).primary,
                width: 1.0,
              ),
            ),
            child: Icon(
              FFIcons.ktick,
              color: FlutterFlowTheme.of(context).info,
              size: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
