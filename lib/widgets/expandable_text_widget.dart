import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/dimminsion.dart';
import 'package:food_delivery/widgets/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({super.key, required this.text});

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondtHalf;

  bool hiddenText = true;

  double textHeight = Dimminsions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondtHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondtHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondtHalf.isEmpty
          ? smallText(
              color: AppColors.paraColor,
              size: Dimminsions.font16,
              text: firstHalf)
          : Column(
              children: [
                smallText(
                    color: AppColors.paraColor,
                    size: Dimminsions.font16,
                    height: 1.5,
                    text: hiddenText
                        ? ("$firstHalf...")
                        : (firstHalf + secondtHalf)),
                InkWell(
                    onTap: ((() {
                      setState(() {
                        hiddenText = !hiddenText;
                      });
                    })),
                    child: Row(
                      children: [
                        smallText(
                            text: "Show more", color: AppColors.mainColor),
                        Icon(
                            hiddenText
                                ? Icons.arrow_drop_down
                                : Icons.arrow_drop_up,
                            color: AppColors.mainColor),
                      ],
                    ))
              ],
            ),
    );
  }
}
