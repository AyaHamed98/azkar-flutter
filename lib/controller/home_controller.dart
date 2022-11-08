
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../view/azkar.dart';
import '../view/tasbeh.dart';


class HomeController extends GetxController {

  int currentIndex=0;
  List<Widget>screens=[
    Tasbeh(),
    Azkar(),
  ];

  void changeCurrentIndex (int index){
      currentIndex=index;
      update();
  }
}
