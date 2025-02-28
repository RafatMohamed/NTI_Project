import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_proj/widget/widget_to_do_app/text_widget_app.dart';

import '../../models/Colors/my_colors.dart';

class DefaultContainerVert extends StatelessWidget {
  final Color containerColor;
  final Color iConColor;
  final String icon;
  final String text;
  final String value;

  const DefaultContainerVert(
      {super.key,
      required this.containerColor,
      required this.iConColor,
      required this.icon,
      required this.text,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
          color: MyColors.whiteColor, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 10,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Container(
                    width: 35,
                    height: 35,
                    color: containerColor,
                    child: SvgPicture.asset(
                      icon,
                      color: iConColor,
                      fit: BoxFit.none,
                    ),
                  )),
              TextWidgetApp(
                text: text,
                fontFamily: "LexendDeca",
                fontSize: 14,
                color: MyColors.textBlackColor,
              ),
            ],
          ),
          Container(
            width: 20,
            height: 21,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: TextWidgetApp(
                text: value,
                fontSize: 14,
                color: iConColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
