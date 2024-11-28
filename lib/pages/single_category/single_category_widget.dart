import '/components/buttons/back_button/back_button_widget.dart';
import '/components/buttons/search_icon_button/search_icon_button_widget.dart';
import '/components/product_item/product_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'single_category_model.dart';
export 'single_category_model.dart';

class SingleCategoryWidget extends StatefulWidget {
  const SingleCategoryWidget({super.key});

  @override
  State<SingleCategoryWidget> createState() => _SingleCategoryWidgetState();
}

class _SingleCategoryWidgetState extends State<SingleCategoryWidget> {
  late SingleCategoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SingleCategoryModel());
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
                  'Jackets',
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
                wrapWithModel(
                  model: _model.searchIconButtonModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const SearchIconButtonWidget(),
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(),
                    child: Wrap(
                      spacing: 10.0,
                      runSpacing: 20.0,
                      alignment: WrapAlignment.spaceBetween,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      direction: Axis.horizontal,
                      runAlignment: WrapAlignment.start,
                      verticalDirection: VerticalDirection.down,
                      clipBehavior: Clip.none,
                      children: [
                        wrapWithModel(
                          model: _model.productItemModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: const ProductItemWidget(
                            img:
                                'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/highfield_pea_coat_1_medium.png?v=1387967696',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.productItemModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: const ProductItemWidget(
                            img:
                                'https://static.vecteezy.com/system/resources/previews/021/103/679/large_2x/isolated-black-t-shirt-free-png.png',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.productItemModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: const ProductItemWidget(
                            img:
                                'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/buttonless_suede_jacket_1_medium.png?v=1387967661',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.productItemModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: const ProductItemWidget(
                            img:
                                'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/kooba_caitlin_hobo_with_bow_detail_1_medium.png?v=1387967729',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.productItemModel5,
                          updateCallback: () => safeSetState(() {}),
                          child: const ProductItemWidget(
                            img:
                                'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/highfield_pea_coat_1_medium.png?v=1387967696',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.productItemModel6,
                          updateCallback: () => safeSetState(() {}),
                          child: const ProductItemWidget(
                            img:
                                'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/light_gloss_gilet_1_medium.png?v=1387967739',
                          ),
                        ),
                        wrapWithModel(
                          model: _model.productItemModel7,
                          updateCallback: () => safeSetState(() {}),
                          child: const ProductItemWidget(
                            img:
                                'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/dkny_vintage_leather_classics_hobo_1_medium.png?v=1387967706',
                          ),
                        ),
                      ],
                    ),
                  ),
                ].divide(const SizedBox(height: 20.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
