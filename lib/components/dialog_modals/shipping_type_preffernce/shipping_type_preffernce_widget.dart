import '/components/bottom_sheet_dragger/bottom_sheet_dragger_widget.dart';
import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/components/shipping_type/shipping_type_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'shipping_type_preffernce_model.dart';
export 'shipping_type_preffernce_model.dart';

class ShippingTypePreffernceWidget extends StatefulWidget {
  const ShippingTypePreffernceWidget({
    super.key,
    required this.applyAction,
  });

  final Future Function()? applyAction;

  @override
  State<ShippingTypePreffernceWidget> createState() =>
      _ShippingTypePreffernceWidgetState();
}

class _ShippingTypePreffernceWidgetState
    extends State<ShippingTypePreffernceWidget> {
  late ShippingTypePreffernceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShippingTypePreffernceModel());
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
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 0.5,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            wrapWithModel(
              model: _model.bottomSheetDraggerModel,
              updateCallback: () => safeSetState(() {}),
              child: const BottomSheetDraggerWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Shipping Type',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: 0.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      wrapWithModel(
                        model: _model.shippingTypeModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: const ShippingTypeWidget(),
                      ),
                      wrapWithModel(
                        model: _model.shippingTypeModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: const ShippingTypeWidget(),
                      ),
                      wrapWithModel(
                        model: _model.shippingTypeModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: const ShippingTypeWidget(),
                      ),
                      wrapWithModel(
                        model: _model.shippingTypeModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: const ShippingTypeWidget(),
                      ),
                    ],
                  ),
                  wrapWithModel(
                    model: _model.fullWidthButtonModel,
                    updateCallback: () => safeSetState(() {}),
                    child: FullWidthButtonWidget(
                      text: 'Apply',
                      action: () async {
                        await widget.applyAction?.call();
                      },
                    ),
                  ),
                ].divide(const SizedBox(height: 20.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
