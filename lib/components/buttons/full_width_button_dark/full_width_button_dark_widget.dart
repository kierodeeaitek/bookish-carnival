import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'full_width_button_dark_model.dart';
export 'full_width_button_dark_model.dart';

class FullWidthButtonDarkWidget extends StatefulWidget {
  const FullWidthButtonDarkWidget({
    super.key,
    required this.text,
    required this.action,
  });

  final String? text;
  final Future Function()? action;

  @override
  State<FullWidthButtonDarkWidget> createState() =>
      _FullWidthButtonDarkWidgetState();
}

class _FullWidthButtonDarkWidgetState extends State<FullWidthButtonDarkWidget> {
  late FullWidthButtonDarkModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FullWidthButtonDarkModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            FlutterFlowTheme.of(context).secondaryBackground,
            FlutterFlowTheme.of(context).primaryBackground
          ],
          stops: const [0.0, 0.9],
          begin: const AlignmentDirectional(0.0, -1.0),
          end: const AlignmentDirectional(0, 1.0),
        ),
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 0.5,
        ),
      ),
      child: FFButtonWidget(
        onPressed: () async {
          await widget.action?.call();
        },
        text: widget.text!,
        options: FFButtonOptions(
          width: double.infinity,
          height: 50.0,
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
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
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
