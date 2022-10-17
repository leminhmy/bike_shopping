import 'package:bike_shopping/app/utils/colors.dart';
import 'package:flutter/material.dart';

class IconButtonDesign1 extends StatelessWidget {
  const IconButtonDesign1({Key? key, required this.icon, this.sizeBtn, this.sizeIcon, this.colorIcon, this.colorBtn, this.sizeBorder, this.colorLiner, this.onPress}) : super(key: key);

  final Widget icon;
  final double? sizeBtn;
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
        height: sizeBtn??30,
        width: sizeBtn??30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: ThemeColor.colorBlackBlue,
            borderRadius: BorderRadius.circular(sizeBorder??4),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: colorLiner??[
                  ThemeColor.colorBlueLight,
                  ThemeColor.colorBlue
                ]
            )
        ),
        child: icon,
      ),
    );
  }
}
