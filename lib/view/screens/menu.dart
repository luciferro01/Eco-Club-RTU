import 'package:eco_club_mohil_version/utils/constants.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_app_bar.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_container.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});

  final List<Map<String, dynamic>> profileData = [
    {
      'image': Assets.account,
      'label': 'Account',
      'onTap': () {},
    },
    {
      'image': Assets.certificate,
      'label': 'Certificates',
      'onTap': () {},
    },
    {
      'image': Assets.badges,
      'label': 'Badges',
      'onTap': () {},
    },
    {
      'image': Assets.about,
      'label': 'About Eco Club',
      'onTap': () {},
    },
    {
      'image': Assets.developer,
      'label': 'About Developer',
      'onTap': () {},
    },
    {
      'image': Assets.privacy,
      'label': 'Privacy Policy',
      'onTap': () {},
    },
    {
      'image': Assets.tnc,
      'label': 'Terms & Conditions',
      'onTap': () {},
    },
    {
      'image': Assets.logOut,
      'label': 'Log Out',
      'onTap': () {},
    },
    {
      'image': Assets.deleteProfile,
      'label': 'Leave Eco Club',
      'onTap': () {},
    },
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: customAppBar(
        isFirstPage: false,
        label: 'MOHIL',
        context: context,
        isHomePage: false,
        isTabBarPage: false,
        isProfilePage: true,
      ),
      body: SizedBox(
        width: width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            const CircleAvatar(
              backgroundColor: ColorConstant.darkMainColor,
              backgroundImage: AssetImage(Assets.environment),
              radius: 100,
            ),
            const SizedBox(height: 12),
            text(text: 'MOHIL BANSAL', isHeading: true),
            const SizedBox(height: 12),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 12, right: 12, left: 12),
                child: ListView.separated(
                  // physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 12,
                    );
                  },
                  shrinkWrap: true,
                  itemCount: 8,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: profileData[index]['onTap'],
                      child: CustomContainer(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        backgroundColor: ColorConstant.lightMainColor,
                        height: 60,
                        width: width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage(
                                    profileData[index]['image'],
                                  ),
                                  height: 30,
                                ),
                                const SizedBox(width: 10),
                                text(
                                    text: profileData[index]['label'],
                                    isLabel: true,
                                    fontSize: 20),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
