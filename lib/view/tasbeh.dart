import 'package:azkar/constants.dart';
import 'package:azkar/controller/tasbeh_controller.dart';
import 'package:azkar/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../widgets/tasbeh_widget.dart';

class Tasbeh extends StatelessWidget {
  Tasbeh({Key? key}) : super(key: key);
  TasbehController controller=Get.find();

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

