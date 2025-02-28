import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nti_proj/models/Icons/my_icons.dart';
import 'package:nti_proj/models/images/my_images.dart';
import 'package:nti_proj/widget/widget_to_do_app/text_widget_app.dart';

import '../../models/user_app.dart';
import 'add_task_page.dart';

class HomeTask extends StatelessWidget {
  const HomeTask({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsetsDirectional.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            user.imgProfile,
                            width: 60,
                            height: 60,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidgetApp(
                              text: "Hello!",
                              fontFamily: "LexendDeca",
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextWidgetApp(
                              text: user.name,
                              fontFamily: "LexendDeca",
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AddTaskPage();
                            },
                          ),
                        );
                      },
                      icon: SvgPicture.asset(
                        MyIcons.iconAddTask,
                        fit: BoxFit.fill,
                        width: 24,
                        height: 24,
                      ))
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Column(
                children: [
                  TextWidgetApp(
                    text:
                        "There are no tasks yet \n Press the button To add New Task",
                    fontFamily: "LexendDeca",
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Image.asset(MyImages.imageFoundTask),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
