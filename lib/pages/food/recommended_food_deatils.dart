import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/dimminsion.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimminsions.radius20),
                          topRight: Radius.circular(Dimminsions.radius20))),
                  child: Center(
                    child: BigText(
                      text: "Chinese Side",
                      size: Dimminsions.font26,
                    ),
                  ),
                )),
            backgroundColor: AppColors.yellowColor,
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimminsions.width20, right: Dimminsions.width20),
                  child: ExpandableTextWidget(
                      text:
                          "Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup Do your kids have trouble eating their vegetables They won’t tonight with this recipe Tender broccoli is seasoned with a generous amount of garlic for a stir-fry even the pickiest of eaters can’t refuse.Toss all the ingredients into one pan, and you’ll have a delicious side with minimal cleanup"),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimminsions.width45 + 5,
                right: Dimminsions.width45 + 5,
                top: Dimminsions.height10,
                bottom: Dimminsions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimminsions.iconSize24,
                ),
                BigText(
                  text: "\$12.88 " + "X" + " 0 ",
                  size: Dimminsions.font26,
                  color: AppColors.mainBlackColor,
                ),
                AppIcon(
                  icon: Icons.add,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  iconSize: Dimminsions.iconSize24,
                )
              ],
            ),
          ),
          Container(
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
                    child: Icon(Icons.favorite, color: AppColors.mainColor)),
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
        ],
      ),
    );
  }
}
