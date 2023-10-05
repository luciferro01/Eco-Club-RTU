import 'package:eco_club_mohil_version/view/screens/event_detail.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_carousel.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_container.dart';
import '../widgets/custom_text.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: customAppBar(
        isFirstPage: false,
        label: 'Explore',
        context: context,
        isHomePage: false,
        isTabBarPage: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(height: 20),
              text(text: 'Water Management', isHeading: true),
              const SizedBox(height: 12),
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
              text(text: 'Energy Management', isHeading: true),
              const SizedBox(height: 12),
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
              text(text: 'Waste Management', isHeading: true),
              const SizedBox(height: 12),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
