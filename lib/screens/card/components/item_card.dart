import 'package:bike_shopping/widget/neumorphism_container.dart';
import 'package:flutter/material.dart';
import 'package:bike_shopping/app/utils/image_local.dart';
import '../../../app/utils/colors.dart';
import '../../../widget/icon_button_desgin1.dart';

import 'package:bike_shopping/widget/text_header3.dart';
class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
      height: 130,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 1,
          )
        )
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    ThemeColor.colorBlueLight2,
                    ThemeColor.colorBlackLight
                  ]
                ),
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage(ImageAssets.bikeBackground),
                    fit: BoxFit.contain)),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const TextHeader3(
                    text: "PEUGEOT-LR01",
                    colorText: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextHeader3(
                        text: "\$ 1,999.99",
                        colorText: ThemeColor.colorBlueLight,
                      ),
                      NeumorphismContainer(
                        offset: const Offset(3,3),
                        colorBackground: ThemeColor.colorBlueBlack,
                        child: Row(
                          children: const [
                            IconButtonDesign1(
                              icon: Icon(
                                Icons.add_outlined,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextHeader3(
                              text: "1",
                              colorText: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButtonDesign1(
                              colorLiner: [
                                ThemeColor.colorGray,
                                ThemeColor.colorGray
                              ],
                              icon: Icon(
                                Icons.remove_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
