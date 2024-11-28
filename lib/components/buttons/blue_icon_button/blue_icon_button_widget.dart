import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'blue_icon_button_model.dart';
export 'blue_icon_button_model.dart';

class BlueIconButtonWidget extends StatefulWidget {
  const BlueIconButtonWidget({
    super.key,
    required this.icon,
    required this.action,
  });

  final Widget? icon;
  final Future Function()? action;

  @override
  State<BlueIconButtonWidget> createState() => _BlueIconButtonWidgetState();
}

class _BlueIconButtonWidgetState extends State<BlueIconButtonWidget> {
  late BlueIconButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlueIconButtonModel());
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
            FlutterFlowTheme.of(context).primary,
            FlutterFlowTheme.of(context).secondary
          ],
          stops: const [0.0, 0.6],
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
