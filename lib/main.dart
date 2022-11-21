import 'package:arvension_ui_test/view/screen/screen_detaild/detaild_screen.dart';
import 'package:arvension_ui_test/view/screen/screen_home/coroce.dart';
import 'package:arvension_ui_test/view/screen/screen_home/screen_home.dart';
import 'package:arvension_ui_test/view/screen/screen_main/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
