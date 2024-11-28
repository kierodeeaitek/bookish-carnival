import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'shipping_type_model.dart';
export 'shipping_type_model.dart';

class ShippingTypeWidget extends StatefulWidget {
  const ShippingTypeWidget({super.key});

  @override
  State<ShippingTypeWidget> createState() => _ShippingTypeWidgetState();
}

class _ShippingTypeWidgetState extends State<ShippingTypeWidget> {
  late ShippingTypeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShippingTypeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              Icons.diamond_outlined,
              color: FlutterFlowTheme.of(context).primary,
              size: 24.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Economy',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
                Text(
                  'Estimated arrival 25 August 2025',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ],
            ),
          ].divide(const SizedBox(width: 10.0)),
        ),
        Theme(
          data: ThemeData(
            checkboxTheme: const CheckboxThemeData(
              visualDensity: VisualDensity.compact,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: CircleBorder(),
            ),
            unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
          ),
          child: Checkbox(
            value: _model.checkboxValue ??= false,
            onChanged: (newValue) async {
              safeSetState(() => _model.checkboxValue = newValue!);
            },
            side: BorderSide(
              width: 2,
              color: FlutterFlowTheme.of(context).alternate,
            ),
            activeColor: FlutterFlowTheme.of(context).primary,
            checkColor: FlutterFlowTheme.of(context).info,
          ),
        ),
      ].divide(const SizedBox(width: 10.0)),
    );
  }
}
