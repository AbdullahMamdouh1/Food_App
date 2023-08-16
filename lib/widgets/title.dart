import 'package:flutter/material.dart';

class customTitle extends StatelessWidget {
  const customTitle({
    Key? key,
    required this.title,required this.fontSize
  }) : super(key: key);
  final String  title;
  final  double  fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(color: Colors.black,fontSize: fontSize,fontWeight: FontWeight.bold),);
  }
}
