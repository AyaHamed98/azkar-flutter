import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../controller/home_controller.dart';
import 'custom_text.dart';

class BuildAppBottomNavigationBar extends StatelessWidget {
  const BuildAppBottomNavigationBar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation: 5,
        backgroundColor: darkYellow,
        currentIndex: controller.currentIndex,
        onTap: (index) {
          controller.changeCurrentIndex(index);
        },
        items: [
          BottomNavigationBarItem(
              icon: CustomText(txt: "تسبيح",
                isBold: true,
                color: controller.currentIndex == 0 ? Colors.black54 : mainColor,),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: CustomText(txt: "اذكار",
                isBold: true,
                color: controller.currentIndex == 1 ? Colors.black54 : mainColor,),
              label: ""
          ),
        ]
    );
  }
}
