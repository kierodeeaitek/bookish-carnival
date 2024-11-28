import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'recent_search_item_model.dart';
export 'recent_search_item_model.dart';

class RecentSearchItemWidget extends StatefulWidget {
  const RecentSearchItemWidget({
    super.key,
    required this.img,
  });

  final String? img;

  @override
  State<RecentSearchItemWidget> createState() => _RecentSearchItemWidgetState();
}

class _RecentSearchItemWidgetState extends State<RecentSearchItemWidget> {
  late RecentSearchItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecentSearchItemModel());
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
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                widget.img!,
                width: 30.0,
                height: 30.0,
                fit: BoxFit.fitHeight,
              ),
            ),
            Text(
              'Women Jacket',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
            ),
          ].divide(const SizedBox(width: 10.0)),
        ),
        FlutterFlowIconButton(
          borderRadius: 8.0,
          buttonSize: 30.0,
          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
          icon: Icon(
            Icons.close_rounded,
            color: FlutterFlowTheme.of(context).info,
            size: 15.0,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
      ],
    );
  }
}
