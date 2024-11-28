import '/components/buttons/back_button/back_button_widget.dart';
import '/components/recent_search_item/recent_search_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BackButton component.
  late BackButtonModel backButtonModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for RecentSearchItem component.
  late RecentSearchItemModel recentSearchItemModel1;
  // Model for RecentSearchItem component.
  late RecentSearchItemModel recentSearchItemModel2;
  // Model for RecentSearchItem component.
  late RecentSearchItemModel recentSearchItemModel3;
  // Model for RecentSearchItem component.
  late RecentSearchItemModel recentSearchItemModel4;
  // Model for RecentSearchItem component.
  late RecentSearchItemModel recentSearchItemModel5;

  @override
  void initState(BuildContext context) {
    backButtonModel = createModel(context, () => BackButtonModel());
    recentSearchItemModel1 =
        createModel(context, () => RecentSearchItemModel());
    recentSearchItemModel2 =
        createModel(context, () => RecentSearchItemModel());
    recentSearchItemModel3 =
        createModel(context, () => RecentSearchItemModel());
    recentSearchItemModel4 =
        createModel(context, () => RecentSearchItemModel());
    recentSearchItemModel5 =
        createModel(context, () => RecentSearchItemModel());
  }

  @override
  void dispose() {
    backButtonModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    recentSearchItemModel1.dispose();
    recentSearchItemModel2.dispose();
    recentSearchItemModel3.dispose();
    recentSearchItemModel4.dispose();
    recentSearchItemModel5.dispose();
  }
}
