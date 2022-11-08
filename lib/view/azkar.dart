import 'package:azkar/view/lis_of_azkar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/azkar_category.dart';

class Azkar extends StatelessWidget {
    Azkar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

