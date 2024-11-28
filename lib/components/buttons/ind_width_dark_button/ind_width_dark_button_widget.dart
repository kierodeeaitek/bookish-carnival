import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ind_width_dark_button_model.dart';
export 'ind_width_dark_button_model.dart';

class IndWidthDarkButtonWidget extends StatefulWidget {
  const IndWidthDarkButtonWidget({
    super.key,
    required this.text,
    required this.action,
    this.icon,
  });

  final String? text;
  final Future Function()? action;
  final Widget? icon;

  @override
  State<IndWidthDarkButtonWidget> createState() =>
      _IndWidthDarkButtonWidgetState();
}

class _IndWidthDarkButtonWidgetState extends State<IndWidthDarkButtonWidget> {
  late IndWidthDarkButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndWidthDarkButtonModel());
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
            FlutterFlowTheme.of(context).secondaryBackground,
            FlutterFlowTheme.of(context).primaryBackground
          ],
          stops: const [0.0, 1.0],
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
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 16.0,
                letterSpacing: 0.0,
                useGoogleFonts: GoogleFonts.asMap()
                    .containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
              ),
          elevation: 0.0,
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).alternate,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
