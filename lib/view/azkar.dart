import 'package:azkar/view/lis_of_azkar.dart';
import 'package:azkar/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors.dart';

class Azkar extends StatelessWidget {
    Azkar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height =MediaQuery.of(context).size.height;
    final double width =MediaQuery.of(context).size.width;
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child:Column(
        children: [
          AzkarCategory(imagePath: "lib/assets/sun.jpg", txt: "اذكار الصباح",onTap: (){
            Get.to(()=>ListOfAzkar("اذكار الصباح"));
          },),
          AzkarCategory(imagePath: "lib/assets/moon.png", txt: "اذكار المساء",
            imageWidth: width*.2,
            onTap: (){
              Get.to(()=>ListOfAzkar("اذكار المساء"));
            },),
          AzkarCategory(imagePath: "lib/assets/doaa.png", txt: "اذكار بعد الصلاة",
            onTap: (){
              Get.to(()=>ListOfAzkar("اذكار بعد الصلاة"));
            },
          ),
        ],
      ),
    );
  }
}

class AzkarCategory extends StatelessWidget {
   AzkarCategory({
    required this.imagePath,
    required this.txt,
     required this.onTap,
     this.imageWidth,
    Key? key,
  }) : super(key: key);
  String imagePath;
  String txt;
  double? imageWidth;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final double height =MediaQuery.of(context).size.height;
    final double width =MediaQuery.of(context).size.width;
    return InkWell(
      onTap:onTap ,
      child: Container(
      height: height * .14,
      width: double.infinity,
      margin: const EdgeInsetsDirectional.all(28),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: green,
            blurRadius: 1,
            spreadRadius: 2,
            offset: Offset(3, 3),
          )
        ],
        gradient: LinearGradient(colors: [
          Colors.white,
          Colors.yellow,
          lightYellow,
          darkYellow,
        ]),
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              child: Image.asset(imagePath,width: imageWidth,)),
          CustomText(txt:txt,fontSize: 22,),
        ],
      ),
      ),
    );
  }
}
