import '/components/buttons/ind_width_button/ind_width_button_widget.dart';
import '/components/buttons/ind_width_dark_button/ind_width_dark_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'confirmation_modal_model.dart';
export 'confirmation_modal_model.dart';

class ConfirmationModalWidget extends StatefulWidget {
  const ConfirmationModalWidget({
    super.key,
    required this.title,
    this.shortDescription,
    required this.cancelText,
    required this.cancelAction,
    required this.confirmText,
    required this.confirmAction,
  });

  final String? title;
  final String? shortDescription;
  final String? cancelText;
  final Future Function()? cancelAction;
  final String? confirmText;
  final Future Function()? confirmAction;

  @override
  State<ConfirmationModalWidget> createState() =>
      _ConfirmationModalWidgetState();
}

class _ConfirmationModalWidgetState extends State<ConfirmationModalWidget> {
  late ConfirmationModalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmationModalModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.85,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 0.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0x482797FF),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.question_mark_rounded,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.title,
                  'Text',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.shortDescription,
                  'Text',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w300,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  wrapWithModel(
                    model: _model.indWidthDarkButtonModel,
                    updateCallback: () => safeSetState(() {}),
                    child: IndWidthDarkButtonWidget(
                      text: widget.cancelText!,
                      action: () async {
                        await widget.cancelAction?.call();
                      },
                    ),
                  ),
                  wrapWithModel(
                    model: _model.indWidthButtonModel,
                    updateCallback: () => safeSetState(() {}),
                    child: IndWidthButtonWidget(
                      text: widget.confirmText!,
                      action: () async {
                        await widget.confirmAction?.call();
                      },
                    ),
                  ),
                ].divide(const SizedBox(width: 10.0)),
              ),
            ].divide(const SizedBox(height: 10.0)),
          ),
        ),
      ),
    );
  }
}
