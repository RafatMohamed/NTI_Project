import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_proj/widget/widget_to_do_app/text_widget_app.dart';

import '../../models/Colors/my_colors.dart';

class DropDownFormField extends StatelessWidget {
  const DropDownFormField({
    super.key,
    required this.containerColor,
    required this.iConColor,
    required this.icon,
    required this.text,
  });

  final Color containerColor;
  final Color iConColor;
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
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
          fontSize: 18,
          color: MyColors.labelTextColor,
        )
      ],
    );
  }
}
