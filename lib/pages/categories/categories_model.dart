import '/components/buttons/back_button/back_button_widget.dart';
import '/components/category_item2/category_item2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'categories_widget.dart' show CategoriesWidget;
import 'package:flutter/material.dart';

class CategoriesModel extends FlutterFlowModel<CategoriesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // Model for CategoryItem2 component.
  late CategoryItem2Model categoryItem2Model1;
  // Model for CategoryItem2 component.
  late CategoryItem2Model categoryItem2Model2;
  // Model for CategoryItem2 component.
  late CategoryItem2Model categoryItem2Model3;
  // Model for CategoryItem2 component.
  late CategoryItem2Model categoryItem2Model4;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    categoryItem2Model1 = createModel(context, () => CategoryItem2Model());
    categoryItem2Model2 = createModel(context, () => CategoryItem2Model());
    categoryItem2Model3 = createModel(context, () => CategoryItem2Model());
    categoryItem2Model4 = createModel(context, () => CategoryItem2Model());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    categoryItem2Model1.dispose();
    categoryItem2Model2.dispose();
    categoryItem2Model3.dispose();
    categoryItem2Model4.dispose();
  }
}
