import 'package:flutter/material.dart';

import '../../../widget/icon_buttom_design.dart';
import '../../../widget/text_header1.dart';

class LabelTitle extends StatelessWidget {
  const LabelTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          IconButtonDesign(
            onPress: (){
              Navigator.pop(context);
            },
            icon: const Center(child:  Icon(Icons.arrow_back_ios_new_rounded,size: 30,color: Colors.white,)),
          ),
          const TextHeader1(
            text: "PEUGEOT - LR01",
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
