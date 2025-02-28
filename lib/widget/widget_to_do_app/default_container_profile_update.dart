import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_proj/widget/widget_to_do_app/text_widget_app.dart';

import '../../models/Colors/my_colors.dart';
import '../../models/Icons/my_icons.dart';

class DefaultContainerProfileUpdate extends StatelessWidget {
  final Color iConColor;
  final String icon;
  final String text;
  final Function() onPress;

  const DefaultContainerProfileUpdate({
    super.key,
    this.iConColor = MyColors.textBlackColor,
    required this.icon,
    required this.text,
    required this.onPress,
  });

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
                  onPressed: onPress,
                  icon: SvgPicture.asset(
                    icon,
                    color: iConColor,
                    fit: BoxFit.none,
                  )),
              TextWidgetApp(
                text: text,
                fontFamily: "LexendDeca",
                fontSize: 16,
                color: MyColors.textBlackColor,
              ),
            ],
          ),
          IconButton(
              onPressed: onPress,
              icon: SvgPicture.asset(
                MyIcons.iconArrowGoProfile,
                fit: BoxFit.fill,
              )),
        ],
      ),
    );
  }
}
