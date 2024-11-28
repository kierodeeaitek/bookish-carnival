import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'payment_option_item_model.dart';
export 'payment_option_item_model.dart';

class PaymentOptionItemWidget extends StatefulWidget {
  const PaymentOptionItemWidget({
    super.key,
    required this.imgLogo,
    required this.name,
  });

  final String? imgLogo;
  final String? name;

  @override
  State<PaymentOptionItemWidget> createState() =>
      _PaymentOptionItemWidgetState();
}

class _PaymentOptionItemWidgetState extends State<PaymentOptionItemWidget> {
  late PaymentOptionItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentOptionItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                widget.imgLogo!,
                width: 30.0,
                height: 30.0,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              valueOrDefault<String>(
                widget.name,
                'm',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
            ),
          ].divide(const SizedBox(width: 10.0)),
        ),
      ),
    );
  }
}
