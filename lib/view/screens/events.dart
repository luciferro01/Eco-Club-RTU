import 'package:eco_club_mohil_version/view/screens/event_detail.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_app_bar.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_container.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_text.dart';
import 'package:eco_club_mohil_version/view/widgets/header_bars.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../widgets/custom_carousel.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: customAppBar(
        isFirstPage: false,
        label: 'Events',
        context: context,
        isHomePage: false,
        isTabBarPage: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCarousel(
                items: [1, 2, 3, 4, 5].map((i) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (contxt) => const EventDetailScreen(),
                        ),
                      );
                    },
                    child: CustomContainer(
                      height: 200,
                      width: width,
                      child: const Image(
                        image: AssetImage(Assets.environment),
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const Divider(
                color: ColorConstant.blackColor,
                thickness: Constants.defaultLineWeight,
              ),
              const SizedBox(height: 20),
              text(text: 'Upcoming Events', isHeading: true),
              const SizedBox(height: 12),
              const HeaderBar(
                  date: '8-10 Oct',
                  image: Assets.environment1,
                  label: 'ENO - National Conference@RTU',
                  venue: 'Petroleum'),
              const SizedBox(height: 30),
              const Divider(
                color: ColorConstant.blackColor,
                thickness: Constants.defaultLineWeight,
              ),
              const SizedBox(height: 20),
              text(text: 'Past Events', isHeading: true),
              const SizedBox(height: 12),
              const HeaderBar(
                  date: '8-10 Oct',
                  image: Assets.environment1,
                  label: 'ENO - National Conference@RTU',
                  venue: 'Petroleum'),
            ],
          ),
        ),
      ),
    );
  }
}
