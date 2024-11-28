import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'blue_icon_button_big_model.dart';
export 'blue_icon_button_big_model.dart';

class BlueIconButtonBigWidget extends StatefulWidget {
  const BlueIconButtonBigWidget({
    super.key,
    required this.icon,
    required this.action,
  });

  final Widget? icon;
  final Future Function()? action;

  @override
  State<BlueIconButtonBigWidget> createState() =>
      _BlueIconButtonBigWidgetState();
}

class _BlueIconButtonBigWidgetState extends State<BlueIconButtonBigWidget> {
  late BlueIconButtonBigModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlueIconButtonBigModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            FlutterFlowTheme.of(context).primary,
            FlutterFlowTheme.of(context).secondary
          ],
          stops: const [0.0, 1.0],
          begin: const AlignmentDirectional(0.0, -1.0),
          end: const AlignmentDirectional(0, 1.0),
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: FlutterFlowIconButton(
        borderRadius: 12.0,
        buttonSize: 50.0,
        icon: widget.icon!,
        onPressed: () async {
          await widget.action?.call();
        },
      ),
    );
  }
}
