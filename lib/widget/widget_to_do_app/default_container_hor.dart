import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_proj/widget/widget_to_do_app/text_widget_app.dart';

class DefaultContainerHor extends StatelessWidget {
  const DefaultContainerHor(
      {super.key,
      required this.decortionColor,
      required this.iconColor,
      required this.iconColorDecoration,
      required this.textColor,
      required this.text,
      required this.desc,
      required this.icon});

  final Color decortionColor;
  final Color iconColor;
  final Color iconColorDecoration;
  final Color textColor;
  final String text;
  final String desc;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      padding: EdgeInsetsDirectional.all(16),
      decoration: BoxDecoration(
        color: decortionColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidgetApp(
                textAlign: TextAlign.start,
                text: text,
                fontFamily: "LexendDeca",
                fontSize: 12,
                color: textColor,
              ),
              IconButton(
                onPressed: () {},
                icon: Container(
                  width: 35,
                  height: 35,
                  color: iconColorDecoration,
                  child: SvgPicture.asset(
                    icon,
                    colorFilter:ColorFilter.mode(iconColor,BlendMode.srcIn ),
                    fit: BoxFit.none,
                  ),
                ),
              ),
            ],
          ),
          TextWidgetApp(
            textAlign: TextAlign.start,
            text: desc,
            fontFamily: "LexendDeca",
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: textColor,
          ),
        ],
      ),
    );
  }
}
