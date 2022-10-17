import 'package:flutter/material.dart';

import 'item_card.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
        child: ListView.builder(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) =>  const ItemCard(),));
  }
}
