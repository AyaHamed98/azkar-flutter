import 'package:flutter/material.dart';

import '../cons.dart';
import 'custom_text.dart';

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
          boxShadow:const [
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
