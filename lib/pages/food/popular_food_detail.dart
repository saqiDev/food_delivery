import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/dimminsion.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

import '../../widgets/app_icon.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimminsions.popularFoodImgSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/food0.png"),
                ),
              ),
            ),
          ),
          Positioned(
            top: Dimminsions.height45,
            left: Dimminsions.width20,
            right: Dimminsions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimminsions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimminsions.width30,
                  right: Dimminsions.width20,
                  top: Dimminsions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimminsions.radius20),
                      topLeft: Radius.circular(Dimminsions.radius20)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(text: 'Chinese Side'),
                  SizedBox(height: Dimminsions.height20),
                  BigText(text: "Introduce"),
                  SizedBox(height: Dimminsions.height20),
                  // ignore: prefer_const_constructors
                  Expanded(
                      child: const SingleChildScrollView(
                    child: ExpandableTextWidget(
                        text:
                            "Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup!"),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimminsions.bottomHeightBar,
        padding: EdgeInsets.only(
            left: Dimminsions.width20,
            right: Dimminsions.width20,
            top: Dimminsions.height30,
            bottom: Dimminsions.height10),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimminsions.radius20 * 2),
              topRight: Radius.circular(Dimminsions.radius20 * 2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: Dimminsions.width20,
                  right: Dimminsions.width20,
                  top: Dimminsions.height20,
                  bottom: Dimminsions.height20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimminsions.radius20),
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(width: Dimminsions.width5),
                  BigText(text: "0"),
                  SizedBox(width: Dimminsions.width5),
                  Icon(Icons.add, color: AppColors.signColor),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: Dimminsions.width20,
                  right: Dimminsions.width20,
                  top: Dimminsions.height20,
                  bottom: Dimminsions.height20),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(Dimminsions.radius20),
              ),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
