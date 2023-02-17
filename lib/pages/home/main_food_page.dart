import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home/food_page_body.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../../widgets/dimminsion.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print("cueent height of device" +
    //     MediaQuery.of(context).size.height.toString());
    // print("cueent width of device" +
    //     // MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimminsions.height45, bottom: Dimminsions.height15),
              padding: EdgeInsets.only(
                  left: Dimminsions.width20, right: Dimminsions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Pakistan",
                        color: AppColors.mainColor,
                      ),
                      // const SizedBox(height: 1),
                      Row(
                        children: [
                          smallText(
                            text: "Islamabad",
                            color: Colors.black54,
                          ),
                          const Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimminsions.width45,
                      height: Dimminsions.width45,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimminsions.radius15),
                        color: AppColors.mainColor,
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimminsions.iconSize24,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // FoodPageBody(),
          const Expanded(
              child: SingleChildScrollView(
            child: FoodPageBody(),
          )),
        ],
      ),
    );
  }
}
