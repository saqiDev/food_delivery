import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';
import '../utils/colors.dart';
import 'big_text.dart';
import 'dimminsion.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimminsions.font26,
        ),
        SizedBox(
          height: Dimminsions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => const Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 15,
                ),
              ),
            ),
            SizedBox(
              width: Dimminsions.width10,
            ),
            smallText(text: "4.5"),
            SizedBox(
              width: Dimminsions.width10,
            ),
            smallText(text: "1287"),
            SizedBox(
              width: Dimminsions.width10,
            ),
            smallText(text: "comments"),
          ],
        ),
        SizedBox(
          height: Dimminsions.height20,
        ),
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
    );
  }
}
