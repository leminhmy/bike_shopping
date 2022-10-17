import 'dart:ui';

import 'package:bike_shopping/screens/detail/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../app/utils/colors.dart';
import '../../../app/utils/image_local.dart';
import '../../../widget/text_header1.dart';

class CardBikeBanner extends StatelessWidget {
  const CardBikeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailPage()));
      },
      child: SizedBox(
        height: size.height * 0.3,
        width: size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [

            Positioned(
              left: 30,
              right: -40,
              bottom: 0,
              top: 0,
              child: Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 0, 0.00035),
                child: Container(
                  decoration:  BoxDecoration(
                    gradient:   LinearGradient(
                      stops: const [0.01,1],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          ThemeColor.colorBlackBlue.withOpacity(1),
                          ThemeColor.colorBlueBlack.withOpacity(0.1),
                        ]
                    ),
                    border: Border.all(
                        color: Colors.grey.shade600,
                        width: 3
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 50,top: 10),
                child: Image.asset(ImageAssets.bikeBackground,fit: BoxFit.contain,)),
            const Positioned(
                bottom: 20,
                left: 50,
                child: TextHeader1(text: "30% Off",fontSize: 27,)),



          ],
        ),
      ),
    );
  }
}
