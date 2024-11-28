import '/components/buttons/blue_icon_button/blue_icon_button_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'category_item2_widget.dart' show CategoryItem2Widget;
import 'package:flutter/material.dart';

class CategoryItem2Model extends FlutterFlowModel<CategoryItem2Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for BlueIconButton component.
  late BlueIconButtonModel blueIconButtonModel;

  @override
  void initState(BuildContext context) {
    blueIconButtonModel = createModel(context, () => BlueIconButtonModel());
  }

  @override
  void dispose() {
    blueIconButtonModel.dispose();
  }
}
