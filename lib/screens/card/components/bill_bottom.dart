import 'package:flutter/material.dart';

import '../../../app/utils/colors.dart';
import '../../../widget/icon_buttom_design.dart';
import '../../../widget/neumorphism_container.dart';
import '../../../widget/text_button_design.dart';
import '../../../widget/text_header1.dart';
import '../../../widget/text_header3.dart';

class BillBottom extends StatelessWidget {
  const BillBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: TextHeader3(
                        colorText: ThemeColor.colorGrey,
                        text: "Your cart qualifies for free shipping"),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                child: NeumorphismContainer(
                    offset: const Offset(5, 5),
                    borderSize: 10,
                    colorBackground: ThemeColor.colorBlueBlack,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: TextHeader3(text: "Bike 30",colorText: ThemeColor.colorGrey,),
                        ),
                        SizedBox(
                          width: 120,
                          child: TextButtonDesign(
                            sizeBorder: 12,
                            listShadow: [],
                            colorLiner: [  ThemeColor.colorBlueLight,
                              ThemeColor.colorBlue],
                            text: TextHeader3(text: "Apply",colorText: Colors.white,),
                          ),
                        )
                      ],
                    )),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextHeader3(text: "Subtotal: ",colorText: ThemeColor.colorGreyWhile,),
                    TextHeader3(text: "\$6119.99: "),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextHeader3(text: "Delivery Fee: ",colorText: ThemeColor.colorGreyWhile,),
                    TextHeader3(text: "\$0 "),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextHeader3(text: "Discount: ",colorText: ThemeColor.colorGreyWhile,),
                    TextHeader3(text: "30% "),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TextHeader3(text: "Total: ",colorText: ThemeColor.colorGreyWhile,),
                    TextHeader1(text: "\$4,283.99",colorText: ThemeColor.colorBlueLight),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: NeumorphismContainer(
                    offset: const Offset(5, 5),
                    borderSize: 10,
                    colorBackground: ThemeColor.colorBlueBlack,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        IconButtonDesign(icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,)),
                        Expanded(child:  Center(child: TextHeader3(text: "Checkout"))),
                      ],
                    )),
              ),

            ],
          ),
        ));
  }
}
