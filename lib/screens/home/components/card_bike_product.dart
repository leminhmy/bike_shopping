import 'package:bike_shopping/app/utils/colors.dart';
import 'package:bike_shopping/app/utils/image_local.dart';
import 'package:bike_shopping/widget/text_header3.dart';
import 'package:flutter/material.dart';

import '../../../widget/text_header1.dart';

class CardBikeProduct extends StatelessWidget {
  const CardBikeProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 270,
        width: 200,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.skew(0, -0.15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey, width: 2),
                  color: Colors.black45,
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        ThemeColor.colorBlueLight2,
                        ThemeColor.colorBlackBlue
                      ]
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                right: 10,
                left: 10,
                bottom: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                       Icon(Icons.favorite_border,color: ThemeColor.colorBlue,size: 35,),
                    ],
                  ),
                  Image.asset(ImageAssets.bikeBackground,height: 100,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TextHeader3(text: "Road Bike"),
                      TextHeader1(text: "PEUGEOT - LR01",fontSize: 22),
                      TextHeader3(text: "\$ 1,999.99"),
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
