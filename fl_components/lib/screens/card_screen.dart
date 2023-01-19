import 'package:fl_components/themes/app_theme.dart';
import 'package:fl_components/widgets/custom_card_type_2.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_card_type_1.dart';


class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10,),
            CustomCardType2(imageUrl: 'https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000'),
            SizedBox(height: 20,),
            CustomCardType2(imageUrl: 'https://images.squarespace-cdn.com/content/v1/59523d5c4c8b031b6d9dcb5b/1645865436351-NF1WX4AHJUE43OZ3GJCY/_S6A1420-Edit-Edit.jpg?format=2500w'),
            SizedBox(height: 20,),
            CustomCardType2(name: 'Un hermoso paisaje', imageUrl: 'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg'),
            SizedBox(height: 100,)
          ],
        )
      );
  }
}

