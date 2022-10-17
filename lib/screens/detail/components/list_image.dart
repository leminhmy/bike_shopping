import 'package:flutter/material.dart';

import '../../../app/utils/image_local.dart';

class ListImage extends StatelessWidget {
  const ListImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Column(
        children: [
          SizedBox(
            height: 300,
            child: PageView.builder(
                itemCount: 3,
                itemBuilder: (context, index){
                  return Image.asset(ImageAssets.bikeBackground,fit: BoxFit.contain,);
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) => const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.circle,color: Colors.grey,size: 12,),
            )),
          )
        ],
      ),
    );
  }
}
