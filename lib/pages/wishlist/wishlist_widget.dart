import '/components/product_item/product_item_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'wishlist_model.dart';
export 'wishlist_model.dart';

class WishlistWidget extends StatefulWidget {
  const WishlistWidget({super.key});

  @override
  State<WishlistWidget> createState() => _WishlistWidgetState();
}

class _WishlistWidgetState extends State<WishlistWidget> {
  late WishlistModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WishlistModel());
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Wishlist',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleMediumFamily,
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleMediumFamily),
                      ),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FlutterFlowChoiceChips(
                  options: const [
                    ChipData('All'),
                    ChipData('Women '),
                    ChipData('Men'),
                    ChipData('Jacket'),
                    ChipData('Pants')
                  ],
                  onChanged: (val) => safeSetState(
                      () => _model.choiceChipsValue = val?.firstOrNull),
                  selectedChipStyle: ChipStyle(
                    backgroundColor: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).info,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                    iconColor: FlutterFlowTheme.of(context).info,
                    iconSize: 16.0,
                    labelPadding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 8.0, 15.0, 8.0),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  unselectedChipStyle: ChipStyle(
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                    iconColor: FlutterFlowTheme.of(context).secondaryText,
                    iconSize: 16.0,
                    labelPadding:
                        const EdgeInsetsDirectional.fromSTEB(15.0, 8.0, 15.0, 8.0),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  chipSpacing: 8.0,
                  rowSpacing: 8.0,
                  multiselect: false,
                  initialized: _model.choiceChipsValue != null,
                  alignment: WrapAlignment.start,
                  controller: _model.choiceChipsValueController ??=
                      FormFieldController<List<String>>(
                    ['All'],
                  ),
                  wrapped: false,
                ),
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
              ]
                  .divide(const SizedBox(height: 20.0))
                  .addToEnd(const SizedBox(height: 120.0)),
            ),
          ),
        ),
      ),
    );
  }
}
