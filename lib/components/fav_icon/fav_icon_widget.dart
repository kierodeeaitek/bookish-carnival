import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'fav_icon_model.dart';
export 'fav_icon_model.dart';

class FavIconWidget extends StatefulWidget {
  const FavIconWidget({super.key});

  @override
  State<FavIconWidget> createState() => _FavIconWidgetState();
}

class _FavIconWidgetState extends State<FavIconWidget> {
  late FavIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavIconModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.0,
      height: 35.0,
      decoration: const BoxDecoration(
        color: Color(0x8DFFFFFF),
        shape: BoxShape.circle,
      ),
      child: ToggleIcon(
        onPressed: () async {
          safeSetState(() => _model.fav = !_model.fav);
        },
        value: _model.fav,
        onIcon: Icon(
          Icons.favorite_rounded,
          color: FlutterFlowTheme.of(context).error,
          size: 20.0,
        ),
        offIcon: Icon(
          Icons.favorite_border_rounded,
          color: FlutterFlowTheme.of(context).info,
          size: 20.0,
        ),
      ),
    );
  }
}
