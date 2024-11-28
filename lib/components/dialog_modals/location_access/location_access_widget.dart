import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/components/buttons/full_width_button_dark/full_width_button_dark_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'location_access_model.dart';
export 'location_access_model.dart';

class LocationAccessWidget extends StatefulWidget {
  const LocationAccessWidget({super.key});

  @override
  State<LocationAccessWidget> createState() => _LocationAccessWidgetState();
}

class _LocationAccessWidgetState extends State<LocationAccessWidget> {
  late LocationAccessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationAccessModel());
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'What is your location',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                  Text(
                    'We need to knw your location in order to suggest nearby services.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ].divide(const SizedBox(height: 10.0)),
              ),
              wrapWithModel(
                model: _model.fullWidthButtonModel,
                updateCallback: () => safeSetState(() {}),
                child: FullWidthButtonWidget(
                  text: 'Allow location Access',
                  action: () async {
                    Navigator.pop(context);
                  },
                ),
              ),
              wrapWithModel(
                model: _model.fullWidthButtonDarkModel,
                updateCallback: () => safeSetState(() {}),
                child: FullWidthButtonDarkWidget(
                  text: 'Enter location manually',
                  action: () async {
                    Navigator.pop(context);
                  },
                ),
              ),
            ].divide(const SizedBox(height: 20.0)),
          ),
        ),
      ),
    );
  }
}
