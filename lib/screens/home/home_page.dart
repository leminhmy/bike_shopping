
import 'dart:math';

import 'package:bike_shopping/app/utils/colors.dart';

import 'package:flutter/material.dart';

import 'components/card_bike_banner.dart';
import 'components/label_widget.dart';
import 'components/list_bike_product.dart';
import 'components/list_category.dart';
import 'components/navigator_bottom.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.colorBlackLight,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: const [
                  LabelWidget(),
                  CardBikeBanner(),
                  ListCateGory(),
                  ListBikeProduct(),
                  SizedBox(height: 130,),
                ],
              ),
            ),
            const NativatorBottom()
          ],
        ),
      ),
    );
  }
}





