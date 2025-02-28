import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_proj/models/Colors/my_colors.dart';
import 'package:nti_proj/models/Icons/my_icons.dart';
import 'package:nti_proj/widget/widget_to_do_app/text_widget_app.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isvalue = false;
  bool isvalueCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextWidgetApp(
          text: "Settings",
          fontSize: 19,
          fontWeight: FontWeight.w300,
          fontFamily: "LexendDeca",
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset(
            MyIcons.iconBack,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 40,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidgetApp(
                  text: "Notification",
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  fontFamily: "LexendDeca",
                ),
                Switch(
                  hoverColor: MyColors.redColor,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeTrackColor: MyColors.greenColor,
                  activeColor: MyColors.whiteColor,
                  value: isvalue,
                  onChanged: (value) {
                    setState(() {
                      isvalue = value;
                    });
                    return log("$isvalue");
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidgetApp(
                  text: "Enable Cloud",
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  fontFamily: "LexendDeca",
                ),
                Checkbox(
                  activeColor: MyColors.greenColor,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  side: BorderSide(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                  ),
                  value: isvalueCheck,
                  onChanged: (value) {
                    setState(() {
                      isvalueCheck = value!;
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
