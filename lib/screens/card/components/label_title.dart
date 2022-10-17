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
            icon: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,),

          ),
          const TextHeader1(text: "My Shopping Cart",colorText: Colors.white,),
          const SizedBox(),
        ],
      ),
    );
  }
}
