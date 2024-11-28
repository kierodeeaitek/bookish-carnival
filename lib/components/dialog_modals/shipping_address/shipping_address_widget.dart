import '/components/bottom_sheet_dragger/bottom_sheet_dragger_widget.dart';
import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/components/buttons/ind_width_dark_button/ind_width_dark_button_widget.dart';
import '/components/shipping_address_item/shipping_address_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'shipping_address_model.dart';
export 'shipping_address_model.dart';

class ShippingAddressWidget extends StatefulWidget {
  const ShippingAddressWidget({
    super.key,
    required this.addNewAction,
    required this.applyAction,
  });

  final Future Function()? addNewAction;
  final Future Function()? applyAction;

  @override
  State<ShippingAddressWidget> createState() => _ShippingAddressWidgetState();
}

class _ShippingAddressWidgetState extends State<ShippingAddressWidget> {
  late ShippingAddressModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShippingAddressModel());
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping Address',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                    wrapWithModel(
                      model: _model.indWidthDarkButtonModel,
                      updateCallback: () => safeSetState(() {}),
                      child: IndWidthDarkButtonWidget(
                        text: 'Add new',
                        icon: const Icon(
                          Icons.add,
                        ),
                        action: () async {
                          await widget.addNewAction?.call();
                        },
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
                      model: _model.shippingAddressItemModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: const ShippingAddressItemWidget(),
                    ),
                    wrapWithModel(
                      model: _model.shippingAddressItemModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: const ShippingAddressItemWidget(),
                    ),
                    wrapWithModel(
                      model: _model.shippingAddressItemModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: const ShippingAddressItemWidget(),
                    ),
                    wrapWithModel(
                      model: _model.shippingAddressItemModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: const ShippingAddressItemWidget(),
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
    );
  }
}
