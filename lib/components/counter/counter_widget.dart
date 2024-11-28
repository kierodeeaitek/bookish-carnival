import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'counter_model.dart';
export 'counter_model.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  late CounterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CounterModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.0,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FlutterFlowIconButton(
            borderRadius: 8.0,
            buttonSize: 30.0,
            icon: Icon(
              Icons.remove_outlined,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 16.0,
            ),
            onPressed: () async {
              _model.counterValue = _model.counterValue! + -1;
              safeSetState(() {});
            },
          ),
          Text(
            valueOrDefault<String>(
              _model.counterValue.toString(),
              '1',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyMediumFamily),
                ),
          ),
          Container(
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
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 30.0,
              icon: Icon(
                Icons.add,
                color: FlutterFlowTheme.of(context).info,
                size: 16.0,
              ),
              onPressed: () async {
                _model.counterValue = _model.counterValue! + 1;
                safeSetState(() {});
              },
            ),
          ),
        ].divide(const SizedBox(width: 10.0)),
      ),
    );
  }
}
