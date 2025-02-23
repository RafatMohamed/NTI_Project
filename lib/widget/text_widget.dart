import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;
  final String? fontFamily;
  final FontStyle? fontStyle;

  const TextWidget({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 18,
    this.color = Colors.black,
    this.fontFamily,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
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
