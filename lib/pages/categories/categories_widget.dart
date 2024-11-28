import '/components/buttons/back_button/back_button_widget.dart';
import '/components/category_item2/category_item2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'categories_model.dart';
export 'categories_model.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  late CategoriesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoriesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.sizeOf(context).height * 0.09),
          child: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                wrapWithModel(
                  model: _model.backButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const BackButtonWidget(),
                ),
                Text(
                  'All Categories',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleMediumFamily,
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleMediumFamily),
                      ),
                ),
                Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: const BoxDecoration(),
                ),
              ],
            ),
            actions: const [],
            centerTitle: false,
            toolbarHeight: MediaQuery.sizeOf(context).height * 0.09,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Wrap(
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
                        model: _model.categoryItem2Model1,
                        updateCallback: () => safeSetState(() {}),
                        child: const CategoryItem2Widget(
                          img:
                              'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/highfield_pea_coat_1_medium.png?v=1387967696',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.categoryItem2Model2,
                        updateCallback: () => safeSetState(() {}),
                        child: const CategoryItem2Widget(
                          img:
                              'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/dkny_vintage_leather_classics_hobo_1_medium.png?v=1387967706',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.categoryItem2Model3,
                        updateCallback: () => safeSetState(() {}),
                        child: const CategoryItem2Widget(
                          img:
                              'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/diesel_-_darron_jeans_1_medium.png?v=1387967683',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.categoryItem2Model4,
                        updateCallback: () => safeSetState(() {}),
                        child: const CategoryItem2Widget(
                          img:
                              'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/buttonless_suede_jacket_1_medium.png?v=1387967661',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
