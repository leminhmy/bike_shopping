import 'package:bike_shopping/app/utils/colors.dart';
import 'package:bike_shopping/app/utils/image_local.dart';
import 'package:bike_shopping/widget/icon_buttom_design.dart';
import 'package:bike_shopping/widget/text_button_design.dart';
import 'package:bike_shopping/widget/text_header1.dart';
import 'package:bike_shopping/widget/text_header3.dart';
import 'package:bike_shopping/widget/text_header5.dart';
import 'package:flutter/material.dart';

import 'components/description_bottom.dart';
import 'components/label_title.dart';
import 'components/list_image.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.colorBlueBlack,
      body: SafeArea(
        child: Column(
          children: const [
            LabelTitle(),
            ListImage(),
            DescriptionBottom(),
          ],
        ),
      ),
    );
  }
}

