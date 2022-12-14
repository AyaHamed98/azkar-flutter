import 'package:azkar/constants.dart';
import 'package:azkar/controller/home_controller.dart';
import 'package:azkar/view/tasbeh.dart';
import 'package:azkar/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/build_app_bottom_navigation_bar.dart';
import 'azkar.dart';


class HomeScreen extends StatelessWidget {
  HomeController controller = Get.find();

  HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      assignId: true,
      builder: (logic) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: mainColor,
              title:const Text("اذكار",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              centerTitle: true,
            ),
            body: controller.screens[controller.currentIndex],
            backgroundColor: mainColor,
            bottomNavigationBar: BuildAppBottomNavigationBar(controller: controller),
        );
      },
    );
  }
}

