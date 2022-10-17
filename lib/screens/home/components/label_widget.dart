import 'package:flutter/material.dart';

import '../../../widget/icon_buttom_design.dart';
import '../../../widget/text_header1.dart';

class LabelWidget extends StatelessWidget {
  const LabelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          TextHeader1(text: "Choose Your Bike",),
          IconButtonDesign(icon: Icon(Icons.search_sharp,color: Colors.white,size: 30,),)
        ],
      ),
    );
  }
}
