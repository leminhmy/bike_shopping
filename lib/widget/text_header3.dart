import 'package:flutter/material.dart';

class TextHeader3 extends StatelessWidget {
  const TextHeader3({Key? key, required this.text, this.colorText, this.fontSize, this.fontWeight}) : super(key: key);

  final String text;
  final Color? colorText;
  final double? fontSize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        color: colorText??Colors.grey.shade400,
        fontSize: fontSize??20,
        fontWeight: fontWeight??FontWeight.w600
    ),textAlign: TextAlign.center,);
  }
}
