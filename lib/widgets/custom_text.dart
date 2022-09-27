import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key,this.textAlign,required this.txt,this.color=Colors.black,this.fontSize=20,this.isBold=false}) : super(key: key);
   final String txt;
   final Color color;
   final double fontSize;
   final bool isBold;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: textAlign,
      style: TextStyle(
        color:color ,
        fontWeight: isBold?FontWeight.bold:FontWeight.normal,
        fontSize: fontSize,
      ),
    );
  }
}
