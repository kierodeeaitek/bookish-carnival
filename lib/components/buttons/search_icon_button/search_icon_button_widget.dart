import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'search_icon_button_model.dart';
export 'search_icon_button_model.dart';

class SearchIconButtonWidget extends StatefulWidget {
  const SearchIconButtonWidget({super.key});

  @override
  State<SearchIconButtonWidget> createState() => _SearchIconButtonWidgetState();
}

class _SearchIconButtonWidgetState extends State<SearchIconButtonWidget> {
  late SearchIconButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchIconButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: FlutterFlowIconButton(
        borderRadius: 12.0,
        buttonSize: 40.0,
        icon: Icon(
          FFIcons.ksearch2,
          color: FlutterFlowTheme.of(context).primaryText,
          size: 24.0,
        ),
        onPressed: () {
          print('IconButton pressed ...');
        },
      ),
    );
  }
}
