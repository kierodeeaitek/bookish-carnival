import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'dark_icon_button_small_model.dart';
export 'dark_icon_button_small_model.dart';

class DarkIconButtonSmallWidget extends StatefulWidget {
  const DarkIconButtonSmallWidget({
    super.key,
    required this.icon,
    required this.action,
  });

  final Widget? icon;
  final Future Function()? action;

  @override
  State<DarkIconButtonSmallWidget> createState() =>
      _DarkIconButtonSmallWidgetState();
}

class _DarkIconButtonSmallWidgetState extends State<DarkIconButtonSmallWidget> {
  late DarkIconButtonSmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DarkIconButtonSmallModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            FlutterFlowTheme.of(context).secondaryBackground,
            FlutterFlowTheme.of(context).primaryBackground
          ],
          stops: const [0.0, 1.0],
          begin: const AlignmentDirectional(0.0, -1.0),
          end: const AlignmentDirectional(0, 1.0),
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: FlutterFlowIconButton(
        borderRadius: 12.0,
        buttonSize: 40.0,
        icon: widget.icon!,
        onPressed: () async {
          await widget.action?.call();
        },
      ),
    );
  }
}
