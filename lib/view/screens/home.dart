import 'dart:math';

import 'package:eco_club_mohil_version/utils/constants.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_app_bar.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<String> headerImages = [
    'assets/images/environment1.png',
    'assets/images/environment.png'
  ];

  @override
  Widget build(BuildContext context) {
    // String randomImage = Random(headerImages);
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      appBar: customAppBar(
          isFirstPage: false,
          label: 'MOHIL',
          context: context,
          isHomePage: true,
          isTabBarPage: true),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: Image(
                image: AssetImage('assets/images/environment1.png'),
                fit: BoxFit.fill,
              ),
            ),
            CustomItemBar(
              heading: 'Today\'s Task',
              label: 'Quiz',
              labelImage: Assets.learn,
              description:
                  'Capacity Building Workshop by Eco Club RTU - Volunteer Registration Form',
            ),
          ],
        ),
      ),
    );
  }
}
