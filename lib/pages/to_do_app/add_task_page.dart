import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_proj/models/Colors/my_colors.dart';
import 'package:nti_proj/models/Icons/my_icons.dart';
import '../../models/user_app.dart';
import '../../widget/widget_to_do_app/selector_form_field_widget_app.dart';
import '../../widget/widget_to_do_app/text_button_widget_app.dart';
import '../../widget/widget_to_do_app/text_form_field_app.dart';
import '../../widget/widget_to_do_app/text_widget_app.dart';
import 'main_home_app.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});
  static List<DropDownFormField> list = [
    DropDownFormField(
      containerColor: MyColors.containerHomeColor,
      iConColor: MyColors.homeIconColor,
      icon: MyIcons.iconHome,
      text: "Home",
    ),
    DropDownFormField(
      containerColor: MyColors.containerWorkColor,
      iConColor: MyColors.whiteColor,
      icon: MyIcons.iconWork,
      text: "Work",
    ),
    DropDownFormField(
        containerColor: MyColors.containerPersonColor,
        iConColor: MyColors.greenColor,
        icon: MyIcons.iconPerson,
        text: "Person"),
  ];

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            MyIcons.iconBack,
            fit: BoxFit.fill,
          ),
        ),
        title: TextWidgetApp(
          text: "Add Task",
          fontFamily: "LexendDeca",
          fontWeight: FontWeight.w300,
          fontSize: 19,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: MyColors.whiteColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 10, vertical: 10),
                height: 100,
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 10),
                    labelText: "Task Group",
                    labelStyle: TextStyle(
                      fontFamily: "LexendDeca",
                      fontSize: 9,
                      color: MyColors.labelTextColor,
                    ),
                    hintText: "Select task group",
                    hintStyle: TextStyle(
                      fontFamily: "LexendDeca",
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                      color: MyColors.labelTextColor,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 19,
                    fontFamily: "LexendDeca",
                    fontWeight: FontWeight.w200,
                    color: MyColors.labelTextColor,
                  ),
                  items: list.map(
                    (e) {
                      return DropdownMenuItem(
                        enabled: true,
                        value: e,
                        child: e,
                      );
                    },
                  ).toList(),
                  // List.generate(
                  //   3 ,
                  //       (index) {
                  //     return DropdownMenuItem(
                  //       child: SizedBox(
                  //         height: 60,
                  //         child: list[index],
                  //       ),
                  //     );
                  //   },
                  // ),

                  onChanged: (value) {},
                ),
              ),
              TextFormFieldApp(
                validator: (value) {
                  return null;
                },
                controller: nameController,
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter some text';
                //   } else {
                //     Text(value);
                //   }
                //   return null;
                // },
                onFieldSubmitted: (userInp) {
                  if (userInp.isEmpty) {
                    return null;
                  } else {}
                },
                hintText: "type your name here",
                labelText: "Your Name",
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                radius: 15,
              ),
              TextFormFieldApp(
                validator: (value) {
                  log(value);
                  return null;
                },
                controller: nameController,
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter some text';
                //   } else {
                //     Text(value);
                //   }
                //   return null;
                // },
                onFieldSubmitted: (userInp) {
                  if (userInp.isEmpty) {
                    return null;
                  } else {}
                },
                hintText: "type your name here",
                labelText: "Your Name",
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                radius: 15,
                maxLine: 5,
              ),
              SizedBox(
                height: 16,
              ),
              TextButtonWidgetGo(
                text: "Save",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeMainPage(
                          user: User(),
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
