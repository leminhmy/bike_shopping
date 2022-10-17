import 'package:flutter/material.dart';

import '../../../app/utils/colors.dart';

class NativatorBottom extends StatelessWidget {
  const NativatorBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<IconData> listIcon = [
      Icons.pedal_bike_outlined,
      Icons.map_outlined,
      Icons.shopping_cart_rounded,
      Icons.person,
      Icons.file_copy,

    ];
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 130,
        child: Stack(
          alignment: const Alignment(0,0.5),
          children: [
            Positioned(
              top: 30,
              right: 0,
              bottom: -20,
              left: 0,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.skewY(-0.07),
                child: Container(
                  color: ThemeColor.colorBlueBlack,

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(5, (index) => IconButton(onPressed: (){}, icon:  Icon(listIcon[index],color: Colors.grey.shade500,size: 35,)))
              ),
            )
          ],
        ),
      ),
    );
  }
}
