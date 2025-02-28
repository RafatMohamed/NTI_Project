import 'package:flutter/material.dart';

import '../../models/Colors/my_colors.dart';

class TextWidgetApp extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final String? fontFamily;
  final FontStyle? fontStyle;
  final TextAlign? textAlign;

  const TextWidgetApp({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 18,
    this.color = MyColors.textBlackColor,
    this.fontFamily,
    this.fontStyle,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        fontStyle: fontStyle,
      ),
    );
  }
}
