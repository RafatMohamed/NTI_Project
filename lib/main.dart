import 'package:flutter/material.dart';
import 'package:nti_proj/models/Colors/my_colors.dart';
import 'package:nti_proj/pages/to_do_app/profile_page_app.dart';
import 'package:nti_proj/pages/to_do_app/splach_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'lib/pages/to_do_app',
      routes: {
        '/profile_page_app.dart': (context) => ProfilePageApp(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: MyColors.backgroundScaffoldColor,
          elevation: 0,
        ),
        scaffoldBackgroundColor: MyColors.backgroundScaffoldColor,
      ),
      title: "To Do",
      debugShowCheckedModeBanner: false,
      home: LetsStart(),
    );
  }
}
