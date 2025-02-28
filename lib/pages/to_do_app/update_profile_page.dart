import 'package:flutter/material.dart';
import 'package:nti_proj/models/Icons/my_icons.dart';
import 'package:nti_proj/models/user_app.dart';
import 'package:nti_proj/pages/to_do_app/profile_page_app.dart';
import 'package:nti_proj/pages/to_do_app/setting_page.dart';

import '../../widget/widget_to_do_app/default_container_profile_update.dart';
import '../../widget/widget_to_do_app/text_button_widget_app.dart';
import '../../widget/widget_to_do_app/text_widget_app.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key, required this.user});
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                ],
              ),
              SizedBox(
                height: 37,
              ),
              DefaultContainerProfileUpdate(
                text: "Update Profile",
                icon: MyIcons.iconPersonProfile,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProfilePageApp();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 18,
              ),
              DefaultContainerProfileUpdate(
                text: "Settings",
                icon: MyIcons.iconSettingProfile,
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SettingPage();
                    },
                  ));
                },
              ),
              Spacer(
                flex: 1,
              ),
              TextButtonWidgetGo(
                  text: "Save",
                  onTap: () {
                    return Navigator.pop(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
