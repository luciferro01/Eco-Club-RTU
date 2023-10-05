import 'package:eco_club_mohil_version/utils/constants.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_app_bar.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_carousel.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_container.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class EventDetailScreen extends StatelessWidget {
  final String? venue;
  final String? date;
  final String? name;
  final String? description;
  final List<String>? images;
  const EventDetailScreen(
      {super.key,
      this.venue,
      this.date,
      this.name,
      this.description,
      this.images});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: customAppBar(
        isFirstPage: false,
        label: 'Event Details',
        context: context,
        isHomePage: false,
        isTabBarPage: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainer(
                height: 400,
                width: width,
                child: const Image(
                  image: AssetImage(
                    Assets.environment,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              text(text: 'ENO Conference @RTU', isLabel: true),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.calendar_today_rounded),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        date ?? '8-10 Oct',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.apartment_rounded),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        venue ?? "Petroleum",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              text(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                maxLines: 20,
                isDescription: true,
              ),
              const SizedBox(
                height: 20,
              ),
              text(text: 'Gallery', isLabel: true),
              const SizedBox(
                height: 18,
              ),
              CustomCarousel(
                height: 400,
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
