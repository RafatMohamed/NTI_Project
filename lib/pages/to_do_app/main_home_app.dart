import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nti_proj/models/Colors/my_colors.dart';
import 'package:nti_proj/pages/to_do_app/update_profile_page.dart';
import '../../models/Icons/my_icons.dart';
import '../../models/user_app.dart';
import '../../widget/text_widget.dart';
import '../../widget/widget_to_do_app/default_container_hor.dart';
import '../../widget/widget_to_do_app/default_container_vert.dart';
import '../../widget/widget_to_do_app/text_widget_app.dart';
import 'add_task_page.dart';

class HomeMainPage extends StatelessWidget {
  const HomeMainPage({super.key, required this.user});
  final User user;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsetsDirectional.all(20),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return UpdateProfilePage(
                            user: user,
                          );
                        },
                      ));
                    },
                    child: Container(
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
                      )),
                ],
              ),
              SizedBox(
                height: 34,
              ),
              Container(
                padding: EdgeInsetsDirectional.all(
                  20,
                ),
                height: 135,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: MyColors.greenColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 140,
                      child: TextWidgetApp(
                        textAlign: TextAlign.start,
                        text: "Your today’s tasks almost done!",
                        fontFamily: "LexendDeca",
                        fontSize: 14,
                        color: MyColors.whiteColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            TextWidgetApp(
                              color: MyColors.whiteColor,
                              text: "80",
                              fontFamily: "LexendDeca",
                              fontSize: 40,
                              fontWeight: FontWeight.w400,
                            ),
                            TextWidgetApp(
                              color: MyColors.whiteColor,
                              text: "%",
                              fontFamily: "LexendDeca",
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ],
                        ),
                        Container(
                          height: 36,
                          decoration: BoxDecoration(
                            color: MyColors.whiteColor,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              overlayColor: Colors.cyan,
                            ),
                            onPressed: () {},
                            child: TextWidgetApp(
                              textAlign: TextAlign.center,
                              color: MyColors.greenColor,
                              text: "View Tasks",
                              fontFamily: "LexendDeca",
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 60,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidgetApp(
                    color: MyColors.textBlackColor,
                    text: "In Progress",
                    fontFamily: "LexendDeca",
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                  Container(
                    width: 20,
                    height: 21,
                    decoration: BoxDecoration(
                      color: Color(0xffCEEBDC),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 1,
                        children: [
                          TextWidget(
                            text: "5",
                            fontSize: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 26,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    spacing: 16,
                    children: [
                      DefaultContainerHor(
                        textColor: MyColors.whiteColor,
                        text: "Work Task",
                        desc: "Add New Features",
                        decortionColor: MyColors.textBlackColor,
                        icon: MyIcons.iconWork,
                        iconColor: MyColors.whiteColor,
                        iconColorDecoration: MyColors.greenColor,
                      ),
                      DefaultContainerHor(
                        textColor: MyColors.textBlackColor,
                        text: "Personal Task",
                        desc: "Improve my English skills by trying to speek",
                        decortionColor: MyColors.containerPersonColor,
                        icon: MyIcons.iconPerson,
                        iconColor: MyColors.containerPersonColor,
                        iconColorDecoration: MyColors.greenColor,
                      ),
                      DefaultContainerHor(
                        textColor: MyColors.textBlackColor,
                        text: "Home Task",
                        desc: "Add new feature for Do It app and commit it",
                        decortionColor: MyColors.containerHomeColor,
                        icon: MyIcons.iconHome,
                        iconColor: MyColors.containerHomeColor,
                        iconColorDecoration: MyColors.homeIconColor,
                      ),
                    ],
                  )),
              SizedBox(
                height: 26,
              ),
              TextWidgetApp(
                textAlign: TextAlign.start,
                text: "Task Groups",
                fontFamily: "LexendDeca",
                fontSize: 14,
                color: MyColors.textBlackColor,
              ),
              SizedBox(
                height: 26,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    spacing: 16,
                    children: [
                      DefaultContainerVert(
                        containerColor: MyColors.containerHomeColor,
                        iConColor: MyColors.homeIconColor,
                        icon: MyIcons.iconHome,
                        text: "Home",
                        value: "5",
                      ),
                      DefaultContainerVert(
                        containerColor: MyColors.containerWorkColor,
                        iConColor: MyColors.whiteColor,
                        icon: MyIcons.iconWork,
                        text: "Work",
                        value: "3",
                      ),
                      DefaultContainerVert(
                        containerColor: MyColors.containerPersonColor,
                        iConColor: MyColors.greenColor,
                        icon: MyIcons.iconPerson,
                        text: "Person",
                        value: "1",
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
