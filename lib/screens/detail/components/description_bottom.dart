import 'package:bike_shopping/screens/card/card_page.dart';
import 'package:bike_shopping/widget/neumorphism_container.dart';
import 'package:flutter/material.dart';

import '../../../app/utils/colors.dart';
import '../../../widget/text_button_design.dart';
import '../../../widget/text_header1.dart';
import '../../../widget/text_header3.dart';
import '../../../widget/text_header5.dart';

class DescriptionBottom extends StatelessWidget {
  const DescriptionBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String textDescription = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum";
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: ThemeColor.colorBlackLight,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20, right: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Expanded(
                                child: NeumorphismContainer(
                                  offset: Offset(3,3),
                                  borderSize: 12,
                                  inset: false,
                                  colorBackground: ThemeColor.colorBlueBlack,
                                  child:  Padding(
                                    padding: EdgeInsets.all(12),
                                    child: TextHeader3(
                                      text: "Description",
                                      colorText: ThemeColor.colorBlue,
                                    ),
                                  ),
                                )),
                            SizedBox(width: 50,),
                            Expanded(
                                child: NeumorphismContainer(
                                  offset: Offset(3,3),
                                  borderSize: 15,
                                  colorBackground: ThemeColor.colorBlueBlack,
                                  child:  Padding(
                                    padding: EdgeInsets.all(15),
                                    child: TextHeader3(
                                      text: "Specification",
                                      colorText: ThemeColor.colorGrey,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      const TextHeader1(
                        text: "PEUGEOT - LR01",
                        colorText: Colors.white,
                      ),
                      const TextHeader5(text: textDescription),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: ThemeColor.colorGray,
                  borderRadius: BorderRadius.circular(40)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children:  [
                    const Expanded(
                      child: Center(
                          child: TextHeader1(
                        text: "\$ 1,999.99",
                        colorText: ThemeColor.colorBlueLight,
                      )),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextButtonDesign(
                            onPress: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const CardPage()));

                            },
                            listShadow: const [],
                              text: const TextHeader3(
                                text: "Add to Cart",
                                colorText: Colors.white,
                              ),

                              colorLiner: const [
                                ThemeColor.colorBlueLight,
                                ThemeColor.colorBlue
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
