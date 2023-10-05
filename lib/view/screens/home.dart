import 'dart:math';

import 'package:eco_club_mohil_version/utils/constants.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_app_bar.dart';
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
        appBar:
            customAppBar(isFirstPage: false, label: 'MOHIL', context: context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 400,
                child: Image(
                  image: AssetImage('assets/images/environment1.png'),
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: width,
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                  color: ColorConstant.lightMainColor,
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      color: ColorConstant.blackColor,
                      width: Constants.defaultLineWeight,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Today\'s Task',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        width: width,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteBackgroundColor,
                          border: Border.all(
                            color: ColorConstant.blackColor,
                            width: Constants.defaultLineWeight,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              Constants.defaultRadius - 20,
                            ),
                          ),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage(Assets.learn),
                                  height: 30,
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Quiz',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Capacity Building Workshop by Eco Club RTU - Volunteer Registration Form',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                              // overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
