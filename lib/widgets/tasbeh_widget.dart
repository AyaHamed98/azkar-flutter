import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../cons.dart';
import 'custom_text.dart';

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
          boxShadow:const [
            BoxShadow(
              color: green,
              blurRadius: 1,
              spreadRadius: 2,
              offset: Offset(3, 3),
            )
          ],
          gradient:const LinearGradient(colors: [
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
               const  CustomText(txt: "33"),
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
