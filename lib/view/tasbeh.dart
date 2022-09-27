import 'package:azkar/colors.dart';
import 'package:azkar/controller/tabeh_controller.dart';
import 'package:azkar/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Tasbeh extends StatelessWidget {
  Tasbeh({Key? key}) : super(key: key);
  TasbehController controller = Get.put(TasbehController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            GetBuilder<TasbehController>(
              builder: (_) {
                return Column(
                  children: [
                    TasbehWidget(
                      txt: "سبحان الله",
                      count: controller.tasbehCounter,
                      onTap: () {
                        controller.changeTasbehNumber();
                      },
                    ),
                    TasbehWidget(
                      txt: "الحمد لله",
                      count: controller.hamdCounter,
                      onTap: () {
                        controller.changeHamdNumber();
                      },
                    ),
                    TasbehWidget(
                      txt: "الله اكبر",
                      count: controller.takbeerCounter,
                      onTap: () {
                        controller.changeTakbeerNumber();
                      },
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class TasbehWidget extends StatelessWidget {
  TasbehWidget({Key? key,
    required this.txt,
    required this.onTap,
    required this.count})
      : super(key: key);

  String txt;
  int count;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height * .31,
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
            Colors.yellow,
            lightYellow,
            darkYellow,
          ]),
          borderRadius: BorderRadiusDirectional.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(txt: "33"),
                CustomText(txt: txt),
              ],
            ),
          CircularPercentIndicator(
          radius: width * .11,
          lineWidth: 10,
          progressColor: green,
          backgroundColor: Colors.black87,
          percent: count / 33,
          center: CustomText(
            fontSize: 24,
            txt: count.toString(),
          ),
        )
          ],
        ),
      ),
    );
  }
}
