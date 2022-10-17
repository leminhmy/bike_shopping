import 'package:bike_shopping/app/utils/colors.dart';


import 'package:flutter/material.dart';
import 'components/bill_bottom.dart';
import 'components/label_title.dart';
import 'components/list_card.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.colorBlueBlack,
      body: SafeArea(
        child: Column(
          children: const [
            LabelTitle(),
            ListCard(),
            BillBottom(),
          ],
        ),
      ),
    );
  }
}

