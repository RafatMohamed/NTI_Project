import 'package:flutter/material.dart';

import '../../models/Colors/my_colors.dart';

class TextButtonWidgetGo extends StatelessWidget {
  const TextButtonWidgetGo({
    super.key,
    required this.text,
    this.backgroundColor = MyColors.greenColor,
    required this.onTap,
    this.textColor = MyColors.whiteColor,
    this.blurRadius = 10,
    this.backgroundColorShadow = MyColors.greenColor,
    this.positionX = 0,
    this.positionY = 5,
  });

  final String text;
  final Color backgroundColor;
  final Color backgroundColorShadow;
  final double positionX;
  final double positionY;
  final Color textColor;
  final Function() onTap;
  final double blurRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: backgroundColor,
            blurRadius: blurRadius,
            offset: Offset(positionX, positionY),
          )
        ],
        color: backgroundColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          overlayColor: Colors.cyan,
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 19,
            fontFamily: "LexendDeca",
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
