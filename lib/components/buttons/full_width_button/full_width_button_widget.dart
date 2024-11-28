import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'full_width_button_model.dart';
export 'full_width_button_model.dart';

class FullWidthButtonWidget extends StatefulWidget {
  const FullWidthButtonWidget({
    super.key,
    required this.text,
    required this.action,
  });

  final String? text;
  final Future Function()? action;

  @override
  State<FullWidthButtonWidget> createState() => _FullWidthButtonWidgetState();
}

class _FullWidthButtonWidgetState extends State<FullWidthButtonWidget> {
  late FullWidthButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FullWidthButtonModel());
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
        options: FFButtonOptions(
          width: double.infinity,
          height: 50.0,
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
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
