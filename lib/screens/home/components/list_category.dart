import 'package:flutter/material.dart';

import '../../../app/utils/icon_local.dart';
import '../../../widget/icon_buttom_design.dart';
import '../../../widget/text_header1.dart';

class ListCateGory extends StatelessWidget {
  const ListCateGory ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> listIconCategory = [
      const Center(child: TextHeader1(text: "All",)),
      const Icon(Icons.directions_bike,color: Colors.white,size: 30,),
      const ImageIcon(AssetImage(IconLocal.road),color: Colors.white),
      const ImageIcon(AssetImage(IconLocal.campingTent),color: Colors.white),
      const ImageIcon(AssetImage(IconLocal.bikeHelmet),color: Colors.white),
    ];
    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(5, (index) =>  Align(
            alignment: Alignment(0,1-(0.5*index)),
            child:  IconButtonDesign(
                sizeBtn: 60,
                icon: listIconCategory[index]),
          ),)
      ),
    );
  }
}
