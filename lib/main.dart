import 'package:flutter/material.dart';
import 'package:nti_proj/pages/home3.dart';

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
      home: Home3(),
    );
  }
}
