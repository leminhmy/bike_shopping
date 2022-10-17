import 'package:flutter/material.dart';

import 'card_bike_product.dart';

class ListBikeProduct extends StatelessWidget {
  const ListBikeProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 35),
          child: Column(
              children: List.generate(
                2,
                    (index) => const CardBikeProduct(),
              )),
        ),
        Column(
            children: List.generate(
              2,
                  (index) => const CardBikeProduct(),
            )),
      ],
    );
  }
}
