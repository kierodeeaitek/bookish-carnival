import '/components/ad_banner/ad_banner_widget.dart';
import '/components/buttons/blue_icon_button_big/blue_icon_button_big_widget.dart';
import '/components/buttons/dark_icon_button_small/dark_icon_button_small_widget.dart';
import '/components/cart_icon/cart_icon_widget.dart';
import '/components/category_item/category_item_widget.dart';
import '/components/coupon_home_item/coupon_home_item_widget.dart';
import '/components/flash_sale/flash_sale_widget.dart';
import '/components/product_item/product_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CartIcon component.
  late CartIconModel cartIconModel;
  // Model for DarkIconButtonSmall component.
  late DarkIconButtonSmallModel darkIconButtonSmallModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for BlueIconButtonBig component.
  late BlueIconButtonBigModel blueIconButtonBigModel;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for adBanner component.
  late AdBannerModel adBannerModel1;
  // Model for adBanner component.
  late AdBannerModel adBannerModel2;
  // Model for adBanner component.
  late AdBannerModel adBannerModel3;
  // Model for CategoryItem component.
  late CategoryItemModel categoryItemModel1;
  // Model for CategoryItem component.
  late CategoryItemModel categoryItemModel2;
  // Model for CategoryItem component.
  late CategoryItemModel categoryItemModel3;
  // Model for CategoryItem component.
  late CategoryItemModel categoryItemModel4;
  // Model for CategoryItem component.
  late CategoryItemModel categoryItemModel5;
  // Model for CategoryItem component.
  late CategoryItemModel categoryItemModel6;
  // Model for FlashSale component.
  late FlashSaleModel flashSaleModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for ProductItem component.
  late ProductItemModel productItemModel1;
  // Model for ProductItem component.
  late ProductItemModel productItemModel2;
  // Model for ProductItem component.
  late ProductItemModel productItemModel3;
  // Model for ProductItem component.
  late ProductItemModel productItemModel4;
  // Model for ProductItem component.
  late ProductItemModel productItemModel5;
  // Model for ProductItem component.
  late ProductItemModel productItemModel6;
  // Model for ProductItem component.
  late ProductItemModel productItemModel7;
  // Model for ProductItem component.
  late ProductItemModel productItemModel8;
  // Model for CouponHomeItem component.
  late CouponHomeItemModel couponHomeItemModel1;
  // Model for CouponHomeItem component.
  late CouponHomeItemModel couponHomeItemModel2;
  // Model for CouponHomeItem component.
  late CouponHomeItemModel couponHomeItemModel3;

  @override
  void initState(BuildContext context) {
    cartIconModel = createModel(context, () => CartIconModel());
    darkIconButtonSmallModel =
        createModel(context, () => DarkIconButtonSmallModel());
    blueIconButtonBigModel =
        createModel(context, () => BlueIconButtonBigModel());
    adBannerModel1 = createModel(context, () => AdBannerModel());
    adBannerModel2 = createModel(context, () => AdBannerModel());
    adBannerModel3 = createModel(context, () => AdBannerModel());
    categoryItemModel1 = createModel(context, () => CategoryItemModel());
    categoryItemModel2 = createModel(context, () => CategoryItemModel());
    categoryItemModel3 = createModel(context, () => CategoryItemModel());
    categoryItemModel4 = createModel(context, () => CategoryItemModel());
    categoryItemModel5 = createModel(context, () => CategoryItemModel());
    categoryItemModel6 = createModel(context, () => CategoryItemModel());
    flashSaleModel = createModel(context, () => FlashSaleModel());
    productItemModel1 = createModel(context, () => ProductItemModel());
    productItemModel2 = createModel(context, () => ProductItemModel());
    productItemModel3 = createModel(context, () => ProductItemModel());
    productItemModel4 = createModel(context, () => ProductItemModel());
    productItemModel5 = createModel(context, () => ProductItemModel());
    productItemModel6 = createModel(context, () => ProductItemModel());
    productItemModel7 = createModel(context, () => ProductItemModel());
    productItemModel8 = createModel(context, () => ProductItemModel());
    couponHomeItemModel1 = createModel(context, () => CouponHomeItemModel());
    couponHomeItemModel2 = createModel(context, () => CouponHomeItemModel());
    couponHomeItemModel3 = createModel(context, () => CouponHomeItemModel());
  }

  @override
  void dispose() {
    cartIconModel.dispose();
    darkIconButtonSmallModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    blueIconButtonBigModel.dispose();
    adBannerModel1.dispose();
    adBannerModel2.dispose();
    adBannerModel3.dispose();
    categoryItemModel1.dispose();
    categoryItemModel2.dispose();
    categoryItemModel3.dispose();
    categoryItemModel4.dispose();
    categoryItemModel5.dispose();
    categoryItemModel6.dispose();
    flashSaleModel.dispose();
    productItemModel1.dispose();
    productItemModel2.dispose();
    productItemModel3.dispose();
    productItemModel4.dispose();
    productItemModel5.dispose();
    productItemModel6.dispose();
    productItemModel7.dispose();
    productItemModel8.dispose();
    couponHomeItemModel1.dispose();
    couponHomeItemModel2.dispose();
    couponHomeItemModel3.dispose();
  }
}
