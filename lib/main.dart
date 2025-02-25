import 'package:flutter/material.dart';
import 'package:nti_proj/pages/profile_page.dart';
import 'package:nti_proj/pages/task_text_form_page.dart';
import 'package:nti_proj/pages/test_page_nti.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Project Flutter",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   scaffoldBackgroundColor: Color(0xffF3F5F4),
      //   appBarTheme: AppBarTheme(
      //     backgroundColor: MyColors.backgroundColor,
      //     centerTitle: true,
      //   ),
      //   fontFamily: 'Lexend_Deca/LexendDeca-Regular.ttf',
      // ),
      home: ProfilePage(),
    );
  }
}
