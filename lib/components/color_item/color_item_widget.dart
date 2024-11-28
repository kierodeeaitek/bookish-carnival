import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'color_item_model.dart';
export 'color_item_model.dart';

class ColorItemWidget extends StatefulWidget {
  const ColorItemWidget({
    super.key,
    bool? isDefault,
  }) : isDefault = isDefault ?? false;

  final bool isDefault;

  @override
  State<ColorItemWidget> createState() => _ColorItemWidgetState();
}

class _ColorItemWidgetState extends State<ColorItemWidget> {
  late ColorItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ColorItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.0,
      height: 20.0,
      child: Stack(
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              _model.isPicked = !_model.isPicked;
              safeSetState(() {});
            },
            child: Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                color: random_data.randomColor(),
                shape: BoxShape.circle,
              ),
            ),
          ),
          if (_model.isPicked)
            Container(
              width: 20.0,
              height: 20.0,
              decoration: const BoxDecoration(
                color: Color(0x82161C24),
                shape: BoxShape.circle,
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).info,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
