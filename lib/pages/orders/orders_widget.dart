import '/components/order_item/order_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'orders_model.dart';
export 'orders_model.dart';

class OrdersWidget extends StatefulWidget {
  const OrdersWidget({super.key});

  @override
  State<OrdersWidget> createState() => _OrdersWidgetState();
}

class _OrdersWidgetState extends State<OrdersWidget>
    with TickerProviderStateMixin {
  late OrdersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrdersModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
                  'Orders',
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
              children: [
                Align(
                  alignment: const Alignment(0.0, 0),
                  child: TabBar(
                    labelColor: FlutterFlowTheme.of(context).primary,
                    unselectedLabelColor:
                        FlutterFlowTheme.of(context).secondaryText,
                    labelStyle: FlutterFlowTheme.of(context)
                        .titleMedium
                        .override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleMediumFamily),
                        ),
                    unselectedLabelStyle: FlutterFlowTheme.of(context)
                        .titleMedium
                        .override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleMediumFamily,
                          letterSpacing: 0.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleMediumFamily),
                        ),
                    indicatorColor: FlutterFlowTheme.of(context).primary,
                    tabs: const [
                      Tab(
                        text: 'Active',
                      ),
                      Tab(
                        text: 'Completed ',
                      ),
                      Tab(
                        text: 'Cancelled',
                      ),
                    ],
                    controller: _model.tabBarController,
                    onTap: (i) async {
                      [() async {}, () async {}, () async {}][i]();
                    },
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _model.tabBarController,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(),
                                child: Wrap(
                                  spacing: 0.0,
                                  runSpacing: 30.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    wrapWithModel(
                                      model: _model.orderItemModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OrderItemWidget(
                                        buttonText: 'Track',
                                        img:
                                            'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/treesje_cash_hobo_1_medium.png?v=1387967780',
                                        buttonAction: () async {
                                          context.pushNamed(
                                            'TrackOrder',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.orderItemModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OrderItemWidget(
                                        buttonText: 'Track',
                                        img:
                                            'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/light_gloss_gilet_1_medium.png?v=1387967739',
                                        buttonAction: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.orderItemModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OrderItemWidget(
                                        buttonText: 'Track',
                                        img:
                                            'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/kooba_caitlin_hobo_with_bow_detail_1_medium.png?v=1387967729',
                                        buttonAction: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.orderItemModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OrderItemWidget(
                                        buttonText: 'Track',
                                        img:
                                            'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/d_and_g_printed_silk_shirt_1_medium.png?v=1387967674',
                                        buttonAction: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.orderItemModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: OrderItemWidget(
                                        buttonText: 'Track',
                                        img:
                                            'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/diesel_-_darron_jeans_1_medium.png?v=1387967683',
                                        buttonAction: () async {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ].addToEnd(const SizedBox(height: 120.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Wrap(
                                spacing: 0.0,
                                runSpacing: 30.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  wrapWithModel(
                                    model: _model.orderItemModel6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: OrderItemWidget(
                                      buttonText: 'Review',
                                      img:
                                          'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/stripe_v-neck_jumper_1_medium.png?v=1387967771',
                                      buttonAction: () async {
                                        context.pushNamed(
                                          'LeaveReview',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.orderItemModel7,
                                    updateCallback: () => safeSetState(() {}),
                                    child: OrderItemWidget(
                                      buttonText: 'Review',
                                      img:
                                          'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/moschino_trench_coat_1_medium.png?v=1387967760',
                                      buttonAction: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.orderItemModel8,
                                    updateCallback: () => safeSetState(() {}),
                                    child: OrderItemWidget(
                                      buttonText: 'Review',
                                      img:
                                          'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/buttonless_suede_jacket_1_medium.png?v=1387967661',
                                      buttonAction: () async {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].addToEnd(const SizedBox(height: 120.0)),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: Wrap(
                                spacing: 0.0,
                                runSpacing: 30.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  wrapWithModel(
                                    model: _model.orderItemModel9,
                                    updateCallback: () => safeSetState(() {}),
                                    child: OrderItemWidget(
                                      buttonText: 'Re-order',
                                      img:
                                          'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/highfield_pea_coat_1_medium.png?v=1387967696',
                                      buttonAction: () async {
                                        context.pushNamed(
                                          'Cart',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.orderItemModel10,
                                    updateCallback: () => safeSetState(() {}),
                                    child: OrderItemWidget(
                                      buttonText: 'Re-order',
                                      img:
                                          'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/dkny_vintage_leather_classics_hobo_1_medium.png?v=1387967706',
                                      buttonAction: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.orderItemModel11,
                                    updateCallback: () => safeSetState(() {}),
                                    child: OrderItemWidget(
                                      buttonText: 'Re-order',
                                      img:
                                          'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/tylie_malibu_womens_globe_trotter_antigua_shoulder_bag_1_medium.png?v=1387967789',
                                      buttonAction: () async {},
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.orderItemModel12,
                                    updateCallback: () => safeSetState(() {}),
                                    child: OrderItemWidget(
                                      buttonText: 'Re-order',
                                      img:
                                          'https://tm-shopify006-clothes.myshopify.com/cdn/shop/products/womens_cyclone_jacket_iii_1_medium.png?v=1387967803',
                                      buttonAction: () async {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].addToEnd(const SizedBox(height: 120.0)),
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
