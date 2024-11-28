import '/components/fav_icon/fav_icon_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_item_widget.dart' show ProductItemWidget;
import 'package:flutter/material.dart';

class ProductItemModel extends FlutterFlowModel<ProductItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for FavIcon component.
  late FavIconModel favIconModel;

  @override
  void initState(BuildContext context) {
    favIconModel = createModel(context, () => FavIconModel());
  }

  @override
  void dispose() {
    favIconModel.dispose();
  }
}
