import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/dimminsion.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scalFactor = 0.8;
  double _height = Dimminsions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;

        // print("The page value is" + _currPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // slider Section
        GetBuilder<PopularProductController>(
          builder: ((popularProducts) {
            return Container(
              height: Dimminsions.pageView,
              // color: Colors.redAccent,
              child: PageView.builder(
                  controller: pageController,
                  itemCount: popularProducts.popularProductList.isEmpty
                      ? 1
                      : popularProducts.popularProductList.length,
                  itemBuilder: (contex, postion) {
                    return _bulidPageItem(postion);
                  }),
            );
          }),
        ),

        GetBuilder<PopularProductController>(
          builder: ((popularProducts) {
            return DotsIndicator(
              dotsCount: popularProducts.popularProductList.isEmpty
                  ? 1
                  : popularProducts.popularProductList.length,
              position: _currPageValue,
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimminsions.radius5)),
              ),
            );
          }),
        ),

        // dots section

        SizedBox(height: Dimminsions.height30),
        // Papoular Text
        Container(
          margin: EdgeInsets.only(left: Dimminsions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(width: Dimminsions.width10),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: smallText(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(width: Dimminsions.width10),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: smallText(
                  text: "Food pairing",
                ),
              ),
            ],
          ),
        ),
        // Food List card
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: Dimminsions.width20,
                    right: Dimminsions.width20,
                    bottom: Dimminsions.height10),
                child: Row(children: [
                  Container(
                    width: Dimminsions.listViewImgWidth,
                    height: Dimminsions.listViewImgHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimminsions.radius20),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/food0.png"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: Dimminsions.listViewTextHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimminsions.radius20),
                            bottomRight: Radius.circular(Dimminsions.radius20)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: Dimminsions.width10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText(text: "Nutritious fruit meal in china"),
                            SizedBox(height: Dimminsions.height10),
                            smallText(text: "With Chinese characteristics"),
                            SizedBox(height: Dimminsions.height10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                IconAndTextWidget(
                                    icon: Icons.circle_sharp,
                                    iconColor: AppColors.iconColor1,
                                    text: "Normal"),
                                IconAndTextWidget(
                                    icon: Icons.location_on_outlined,
                                    iconColor: AppColors.mainColor,
                                    text: "1.7km"),
                                IconAndTextWidget(
                                    icon: Icons.access_time_rounded,
                                    iconColor: AppColors.iconColor2,
                                    text: "32min"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              );
            })
      ],
    );
  }

  Widget _bulidPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();

    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scalFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scalFactor + (_currPageValue - index + 1) * (1 - _scalFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scalFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scalFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimminsions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimminsions.width5, right: Dimminsions.width5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimminsions.radius30),
              color: index.isEven
                  ? const Color(0xFF69c5df)
                  : const Color(0xFF9294cc),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/food0.png"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimminsions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimminsions.width30,
                  right: Dimminsions.width30,
                  bottom: Dimminsions.height15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimminsions.radius20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5)),
                  BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                  BoxShadow(color: Colors.white, offset: Offset(5, 0))
                ],
              ),
              child: Container(
                margin: EdgeInsets.only(
                    top: Dimminsions.height15,
                    right: Dimminsions.width15,
                    left: Dimminsions.width15),
                child: const AppColumn(
                  text: 'Chinese Side',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
