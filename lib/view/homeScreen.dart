import 'dart:async';

import 'package:azkar/colors.dart';
import 'package:azkar/controller/home_controller.dart';
import 'package:azkar/view/main_screen.dart';
import 'package:azkar/view/sala.dart';
import 'package:azkar/view/tasbeh.dart';
import 'package:azkar/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'azkar.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   HomeController controller =Get.put(HomeController());
   int currentIndex=0;

   List<Widget>screens=[
     Tasbeh(),
     Azkar(),
     Sala()
   ];
   void changeCurrentIndex (int index){
    setState(() {
      currentIndex=index;
    });
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text("اذكار",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:screens[currentIndex],
      backgroundColor: mainColor,
      bottomNavigationBar: BottomNavigationBar(
          elevation: 5,
          backgroundColor: darkYellow,
          currentIndex:currentIndex,
          onTap: (index){
            changeCurrentIndex(index);
          },
          items: [
            BottomNavigationBarItem(
                icon: CustomText(txt: "تسبيح",isBold:true,color:currentIndex==0?Colors.black54:mainColor,),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: CustomText(txt: "اذكار",isBold:true,color:currentIndex==1?Colors.black54:mainColor,),
                label: ""
            ),
            BottomNavigationBarItem(
                icon: CustomText(txt: "الصلاة",isBold:true,color: currentIndex==2?Colors.black54:mainColor,),
                label: ""
            ),
          ]
      )
    );
  }
}
