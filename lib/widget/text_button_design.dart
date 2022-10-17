import 'package:bike_shopping/app/utils/colors.dart';
import 'package:flutter/material.dart';

class TextButtonDesign extends StatelessWidget {
  const TextButtonDesign({Key? key, required this.text, this.sizeIcon, this.colorIcon, this.colorBtn, this.sizeBorder, this.colorLiner, this.onPress, this.listShadow}) : super(key: key);

  final Widget text;
  final List<BoxShadow>? listShadow;
  final double? sizeIcon;
  final Color? colorIcon;
  final Color? colorBtn;
  final double? sizeBorder;
  final List<Color>? colorLiner;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress??(){},
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(sizeBorder??15),
            boxShadow: listShadow?? const [
              BoxShadow(
                color: ThemeColor.colorBlueBlack,
                spreadRadius: 5,
                blurRadius: 3,
                offset: Offset(-5, -2),
              )
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: colorLiner??[
                  ThemeColor.colorBlueBlack,
                  ThemeColor.colorBlackLight
                ]
            )
        ),
        child: text,
      ),
    );
  }
}
