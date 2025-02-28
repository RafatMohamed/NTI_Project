import 'package:flutter/material.dart';
import 'package:nti_proj/models/Colors/my_colors.dart';
import 'package:nti_proj/models/images/my_images.dart';
import 'package:nti_proj/pages/to_do_app/profile_page_app.dart';
import '../../widget/widget_to_do_app/text_button_widget_app.dart';
import '../../widget/widget_to_do_app/text_widget_app.dart';

class LetsStart extends StatelessWidget {
  const LetsStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
              const EdgeInsetsDirectional.only(top: 90, start: 37, end: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                MyImages.imageSplach,
                width: 300,
                height: 345,
              ),
              SizedBox(
                height: 60,
              ),
              TextWidgetApp(
                text: "Welcome To  Do It !",
                fontFamily: "LexendDeca",
                fontSize: 24,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              TextWidgetApp(
                text: "Ready to conquer your tasks? Let's Do \n It together.",
                fontFamily: "LexendDeca",
                fontSize: 16,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 56,
              ),
              TextButtonWidgetGo(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    "/profile_page_app.dart",
                    arguments: ProfilePageApp(),
                  );
                },
                text: "Let’s Start",
                backgroundColor: MyColors.greenColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
