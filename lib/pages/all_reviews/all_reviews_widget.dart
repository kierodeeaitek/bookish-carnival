import '/components/buttons/back_button/back_button_widget.dart';
import '/components/buttons/full_width_button/full_width_button_widget.dart';
import '/components/product_item/product_item_widget.dart';
import '/components/review_item/review_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'all_reviews_model.dart';
export 'all_reviews_model.dart';

class AllReviewsWidget extends StatefulWidget {
  const AllReviewsWidget({super.key});

  @override
  State<AllReviewsWidget> createState() => _AllReviewsWidgetState();
}

class _AllReviewsWidgetState extends State<AllReviewsWidget> {
  late AllReviewsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllReviewsModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
                  'All Reviews',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reviews (210)',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ],
                      ),
                      Wrap(
                        spacing: 10.0,
                        runSpacing: 10.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          wrapWithModel(
                            model: _model.reviewItemModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: const ReviewItemWidget(),
                          ),
                          wrapWithModel(
                            model: _model.reviewItemModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: const ReviewItemWidget(),
                          ),
                          wrapWithModel(
                            model: _model.reviewItemModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: const ReviewItemWidget(),
                          ),
                          wrapWithModel(
                            model: _model.reviewItemModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: const ReviewItemWidget(),
                          ),
                          wrapWithModel(
                            model: _model.reviewItemModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: const ReviewItemWidget(),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Write a review',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                                hintText: 'Write your review here',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                              maxLines: 5,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.fullWidthButtonModel,
                            updateCallback: () => safeSetState(() {}),
                            child: FullWidthButtonWidget(
                              text: 'Submit Review',
                              action: () async {},
                            ),
                          ),
                        ].divide(const SizedBox(height: 10.0)),
                      ),
                    ].divide(const SizedBox(height: 20.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Similar Products',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          Text(
                            'See all',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ],
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
                                    'https://static.vecteezy.com/system/resources/previews/036/395/961/large_2x/ai-generated-fashion-shoes-on-transparent-background-ai-generated-free-png.png',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.productItemModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: const ProductItemWidget(
                                img:
                                    'https://static.vecteezy.com/system/resources/previews/021/103/679/large_2x/isolated-black-t-shirt-free-png.png',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.productItemModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: const ProductItemWidget(
                                img:
                                    'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/buttonless_suede_jacket_1_medium.png?v=1387967661',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.productItemModel5,
                              updateCallback: () => safeSetState(() {}),
                              child: const ProductItemWidget(
                                img:
                                    'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/kooba_caitlin_hobo_with_bow_detail_1_medium.png?v=1387967729',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.productItemModel6,
                              updateCallback: () => safeSetState(() {}),
                              child: const ProductItemWidget(
                                img:
                                    'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/highfield_pea_coat_1_medium.png?v=1387967696',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.productItemModel7,
                              updateCallback: () => safeSetState(() {}),
                              child: const ProductItemWidget(
                                img:
                                    'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/light_gloss_gilet_1_medium.png?v=1387967739',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.productItemModel8,
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
              ]
                  .divide(const SizedBox(height: 20.0))
                  .addToEnd(const SizedBox(height: 180.0)),
            ),
          ),
        ),
      ),
    );
  }
}
