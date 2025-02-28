import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/Colors/my_colors.dart';
import '../../models/Icons/my_icons.dart';
import '../icon_svg_widget.dart';

class TextFormFieldApp extends StatelessWidget {
  const TextFormFieldApp({
    super.key,
    this.iconSuffix = false,
    this.maxLine = 1,
    required this.labelText,
    this.labelFontWeight = FontWeight.normal,
    this.labelFontSize = 9,
    this.labelColor = MyColors.labelTextColor,
    this.labelFontFamily = "LexendDeca",
    this.labelFontStyle = FontStyle.normal,
    this.labelTextAlign = TextAlign.start,
    required this.hintText,
    this.hintFontWeight = FontWeight.w200,
    this.hintFontSize = 14,
    this.hintColor = MyColors.labelTextColor,
    this.hintFontFamily = "LexendDeca",
    this.hintFontStyle = FontStyle.normal,
    this.hintTextAlign = TextAlign.start,
    this.radius = 15,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.borderDecorationColor = MyColors.greenColor,
    required this.validator,
    required this.onFieldSubmitted,
    required this.controller,
  });

  final bool iconSuffix;
  final int maxLine;
  final Color borderDecorationColor;
  final String hintText;
  final FontWeight hintFontWeight;
  final double hintFontSize;
  final Color hintColor;
  final String? hintFontFamily;
  final FontStyle? hintFontStyle;
  final TextAlign? hintTextAlign;
  final String labelText;
  final FontWeight labelFontWeight;
  final double labelFontSize;
  final Color labelColor;
  final String? labelFontFamily;
  final FontStyle? labelFontStyle;
  final TextAlign? labelTextAlign;
  final double radius;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final FormFieldValidator validator;
  final Function(String) onFieldSubmitted;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: MyColors.whiteColor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(style: BorderStyle.none)),
      padding: EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.always,
        enableSuggestions: true,
        validator: validator,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(
                  color: borderDecorationColor, strokeAlign: hintFontSize)),
          filled: true,
          fillColor: Colors.transparent,
          border: InputBorder.none,
          icon: iconSuffix
              ? IConSvgWidget(
                  radius: 5,
                  width: 35,
                  height: 35,
                  colorContanier: MyColors.containerHomeColor,
                  icon: SvgPicture.asset(
                    width: 19,
                    height: 19,
                    MyIcons.iconHome,
                    fit: BoxFit.none,
                  ),
                )
              : null,
          labelText: labelText,
          labelStyle: TextStyle(
            color: labelColor,
            fontSize: labelFontSize,
            fontFamily: labelFontFamily,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintColor,
            fontSize: hintFontSize,
            fontFamily: hintFontFamily,
            fontWeight: hintFontWeight,
          ),
        ),
        keyboardType: keyboardType,
        maxLines: maxLine,
        textInputAction: textInputAction,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: hintColor,
          fontSize: hintFontSize,
          fontFamily: hintFontFamily,
          fontWeight: hintFontWeight,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
