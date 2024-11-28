import '/components/ad_banner/ad_banner_widget.dart';
import '/components/buttons/blue_icon_button_big/blue_icon_button_big_widget.dart';
import '/components/buttons/dark_icon_button_small/dark_icon_button_small_widget.dart';
import '/components/cart_icon/cart_icon_widget.dart';
import '/components/category_item/category_item_widget.dart';
import '/components/coupon_home_item/coupon_home_item_widget.dart';
import '/components/dialog_modals/add_new_address/add_new_address_widget.dart';
import '/components/dialog_modals/shipping_address/shipping_address_widget.dart';
import '/components/filter_options/filter_options_widget.dart';
import '/components/flash_sale/flash_sale_widget.dart';
import '/components/product_item/product_item_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

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
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                    Builder(
                      builder: (context) => InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            useSafeArea: true,
                            context: context,
                            builder: (context) {
                              return GestureDetector(
                                onTap: () => FocusScope.of(context).unfocus(),
                                child: Padding(
                                  padding: MediaQuery.viewInsetsOf(context),
                                  child: ShippingAddressWidget(
                                    addNewAction: () async {
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: const AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(dialogContext)
                                                      .unfocus(),
                                              child: AddNewAddressWidget(
                                                saveAction: () async {},
                                                cancelAction: () async {},
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    applyAction: () async {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Kigali, Rwanda',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                            Icon(
                              FFIcons.kdown2,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 30.0,
                            ),
                          ].divide(const SizedBox(width: 5.0)),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.cartIconModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const CartIconWidget(),
                    ),
                    SizedBox(
                      width: 40.0,
                      height: 40.0,
                      child: Stack(
                        children: [
                          wrapWithModel(
                            model: _model.darkIconButtonSmallModel,
                            updateCallback: () => safeSetState(() {}),
                            child: DarkIconButtonSmallWidget(
                              icon: Icon(
                                FFIcons.knotification1,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              action: () async {
                                context.pushNamed(
                                  'Notifications',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 8.0, 0.0),
                              child: Container(
                                width: 10.0,
                                height: 10.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).error,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ].divide(const SizedBox(width: 10.0)),
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              isDense: false,
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
                              hintText: 'Search',
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
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
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
                              prefixIcon: Icon(
                                FFIcons.ksearch2,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.blueIconButtonBigModel,
                        updateCallback: () => safeSetState(() {}),
                        child: BlueIconButtonBigWidget(
                          icon: Icon(
                            FFIcons.kfilter5,
                            color: FlutterFlowTheme.of(context).info,
                          ),
                          action: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              useSafeArea: true,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: FilterOptionsWidget(
                                      clearAction: () async {
                                        Navigator.pop(context);
                                      },
                                      applyAction: () async {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                        ),
                      ),
                    ].divide(const SizedBox(width: 10.0)),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 164.0,
                  child: CarouselSlider(
                    items: [
                      wrapWithModel(
                        model: _model.adBannerModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: const AdBannerWidget(
                          img:
                              'https://images.unsplash.com/photo-1484327973588-c31f829103fe?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZmFzaGlvbnxlbnwwfHwwfHx8MA%3D%3D',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.adBannerModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: const AdBannerWidget(
                          img:
                              'https://images.unsplash.com/photo-1495385794356-15371f348c31?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGZhc2hpb258ZW58MHx8MHx8fDI%3D',
                        ),
                      ),
                      wrapWithModel(
                        model: _model.adBannerModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: const AdBannerWidget(
                          img:
                              'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8ZmFzaGlvbnxlbnwwfHwwfHx8Mg%3D%3D',
                        ),
                      ),
                    ],
                    carouselController: _model.carouselController ??=
                        CarouselSliderController(),
                    options: CarouselOptions(
                      initialPage: 1,
                      viewportFraction: 0.88,
                      disableCenter: true,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.25,
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayInterval: const Duration(milliseconds: (800 + 4000)),
                      autoPlayCurve: Curves.linear,
                      pauseAutoPlayInFiniteScroll: true,
                      onPageChanged: (index, _) =>
                          _model.carouselCurrentIndex = index,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Category',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleLargeFamily,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleLargeFamily),
                                ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'Categories',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            child: Text(
                              'See all',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.categoryItemModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: const CategoryItemWidget(
                                img:
                                    'https://images.unsplash.com/photo-1562157873-818bc0726f68?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGNsb3RoaW5nfGVufDB8fDB8fHww',
                                name: 'T-shirt',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.categoryItemModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: const CategoryItemWidget(
                                img:
                                    'https://images.unsplash.com/photo-1504198458649-3128b932f49e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8ZmFzaGlvbnxlbnwwfHwwfHx8Mg%3D%3D',
                                name: 'Pants',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.categoryItemModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: const CategoryItemWidget(
                                img:
                                    'https://images.unsplash.com/photo-1515372039744-b8f02a3ae446?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZHJlc3N8ZW58MHx8MHx8fDI%3D',
                                name: 'Dress',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.categoryItemModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: const CategoryItemWidget(
                                img:
                                    'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/womens_cyclone_jacket_iii_1_medium.png?v=1387967803',
                                name: 'Jacket',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.categoryItemModel5,
                              updateCallback: () => safeSetState(() {}),
                              child: const CategoryItemWidget(
                                img:
                                    'https://images.unsplash.com/photo-1535486648131-54a1558cb3fc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c29ja3N8ZW58MHx8MHx8fDI%3D',
                                name: 'Socks',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.categoryItemModel6,
                              updateCallback: () => safeSetState(() {}),
                              child: const CategoryItemWidget(
                                img:
                                    'https://images.unsplash.com/photo-1542406775-ade58c52d2e4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGhvb2RpZXxlbnwwfHwwfHx8Mg%3D%3D',
                                name: 'Jumpers',
                              ),
                            ),
                          ].divide(const SizedBox(width: 15.0)),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 10.0)),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: wrapWithModel(
                    model: _model.flashSaleModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const FlashSaleWidget(),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: FlutterFlowChoiceChips(
                            options: const [
                              ChipData('All'),
                              ChipData('Newest'),
                              ChipData('Popular'),
                              ChipData('Women '),
                              ChipData('Men')
                            ],
                            onChanged: (val) => safeSetState(() =>
                                _model.choiceChipsValue = val?.firstOrNull),
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                              iconColor: FlutterFlowTheme.of(context).info,
                              iconSize: 16.0,
                              labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 8.0, 15.0, 8.0),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              iconSize: 16.0,
                              labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 8.0, 15.0, 8.0),
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
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Container(
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
                    ),
                  ].divide(const SizedBox(height: 20.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Coupons',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleLargeFamily,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleLargeFamily),
                                ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'Coupons',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            child: Text(
                              'See all',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.couponHomeItemModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: const CouponHomeItemWidget(),
                            ),
                            wrapWithModel(
                              model: _model.couponHomeItemModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: const CouponHomeItemWidget(
                                isLocked: false,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.couponHomeItemModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: const CouponHomeItemWidget(
                                isLocked: false,
                              ),
                            ),
                          ].divide(const SizedBox(width: 15.0)),
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 10.0)),
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
