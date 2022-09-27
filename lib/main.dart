import 'package:azkar/binding/binding.dart';
import 'package:azkar/view/homeScreen.dart';
import 'package:azkar/view/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      initialBinding: Binding(),
    );
  }
}
