import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ind_width_button_model.dart';
export 'ind_width_button_model.dart';

class IndWidthButtonWidget extends StatefulWidget {
  const IndWidthButtonWidget({
    super.key,
    required this.text,
    required this.action,
    this.icon,
  });

  final String? text;
  final Future Function()? action;
  final Widget? icon;

  @override
  State<IndWidthButtonWidget> createState() => _IndWidthButtonWidgetState();
}

class _IndWidthButtonWidgetState extends State<IndWidthButtonWidget> {
  late IndWidthButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndWidthButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            FlutterFlowTheme.of(context).primary,
            FlutterFlowTheme.of(context).secondary
          ],
          stops: const [0.0, 0.9],
          begin: const AlignmentDirectional(0.0, -1.0),
          end: const AlignmentDirectional(0, 1.0),
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: FFButtonWidget(
        onPressed: () async {
          await widget.action?.call();
        },
        text: widget.text!,
        icon: widget.icon,
        options: FFButtonOptions(
          height: 50.0,
          padding: const EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 26.0, 0.0),
          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: Colors.transparent,
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                color: Colors.white,
                fontSize: 16.0,
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
              ),
          elevation: 0.0,
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
