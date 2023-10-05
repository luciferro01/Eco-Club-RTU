import 'dart:math';

import 'package:eco_club_mohil_version/utils/constants.dart';
import 'package:eco_club_mohil_version/view/screens/quiz.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_app_bar.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_container.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_item.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<String> headerImages = [
    'assets/images/environment1.png',
    'assets/images/environment.png'
  ];

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: ColorConstant.backgroundColor,
      appBar: customAppBar(
          isFirstPage: true,
          label: 'MOHIL',
          context: context,
          isHomePage: true,
          isTabBarPage: true),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 400,
              child: Image(
                image: AssetImage('assets/images/environment1.png'),
                fit: BoxFit.fill,
              ),
            ),
            CustomItemBar(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: ((context) => const QuizScreen()),
                ),
              ),
              heading: 'Today\'s Task',
              label: 'Quiz',
              labelImage: Assets.learn,
              description:
                  'Capacity Building Workshop by Eco Club RTU - Volunteer Registration Form',
            ),
            const SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text(
                      text:
                          'Yo! It\'s MOHIL BANSAL bro. Zindagi ke Maze lo, isse pahle ki Zindagi aapke maze le',
                      maxLines: 4,
                      fontWeight: FontWeight.w600,
                      isLabel: true),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Image(
                        image: AssetImage(Assets.signature),
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      text(
                          text: 'MOHIL BANSAL',
                          isDescription: true,
                          fontWeight: FontWeight.w500),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
