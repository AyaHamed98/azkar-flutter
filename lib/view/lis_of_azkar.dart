import 'package:azkar/constants.dart';
import 'package:azkar/controller/azkar_category_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_text.dart';

class ListOfAzkar extends StatelessWidget {
  ListOfAzkar(this.title, {Key? key}) : super(key: key) {
    super.key;
    if (title == "اذكار الصباح") {
      controller.getAzkarAlSabah("azkar_sabah");
    } else if (title == "اذكار المساء") {
      controller.getAzkarAlSabah("azkar_massa");
      print(controller.azkarList.length);
    } else if (title == "اذكار بعد الصلاة") {
      controller.getAzkarAlSabah("PostPrayer_azkar");
    }
  }
  String title;
  AzkarController controller=Get.find();
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
          backgroundColor: mainColor,
          title: CustomText(txt: title, color: Colors.white,),
          centerTitle: true
      ),
      body: GetBuilder<AzkarController>(
          builder: (_) =>
          controller.getData? buildAzkarList(height):buildCircularProgressIndicator()


      ),
    );
  }






  Center buildCircularProgressIndicator() => const Center(child: CircularProgressIndicator(color: lightYellow,));

  SizedBox buildAzkarList(double height) {
    return SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: ListView.builder(
              itemCount: controller.azkarList.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: (){
                    if(controller.azkarList[i].count<controller.azkarList[i].repeat){
                      controller.azkarList[i].count++;
                      controller.update();
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsetsDirectional.all(10),
                    padding: const EdgeInsetsDirectional.all(5),
                    decoration: BoxDecoration(
                      boxShadow: const [
                         BoxShadow(
                          color: green,
                          blurRadius: 1,
                          spreadRadius: 2,
                          offset: Offset(3, 3),
                        )
                      ],
                      gradient:const LinearGradient(colors: [
                        Colors.white,
                        Colors.yellow,
                        lightYellow,
                        darkYellow,
                      ]),
                      borderRadius: BorderRadiusDirectional.circular(15),
                    ),
                    child: Column(
                      children: [
                        CustomText(txt: controller.azkarList[i].zekr,
                          textAlign: TextAlign.end,),
                        const Divider(thickness: 1, color: green,),
                        CustomText(
                          txt: controller.azkarList[i].bless.toString(), textAlign: TextAlign.end,),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomText(
                              txt: controller.azkarList[i].count.toString(),),
                            const Spacer(),
                            CustomText(
                              txt: controller.azkarList[i].repeat.toString(),),
                          ],
                        ),
                        SizedBox(height:height*.02 ,),
                        LinearProgressIndicator(
                          value: controller.azkarList[i].count/controller.azkarList[i].repeat,
                          valueColor: const AlwaysStoppedAnimation(green),
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(height:height*.02 ,),
                        const SizedBox(height: 12,),

                      ],
                    ),
                  ),
                );
              }
          ),

        );
  }
}                                               
