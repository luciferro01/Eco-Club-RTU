import 'package:carousel_slider/carousel_slider.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_container.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../screens/event_detail.dart';

class CustomCarousel extends StatelessWidget {
  final List<Widget> items;
  const CustomCarousel({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        viewportFraction: 0.8,
        enlargeCenterPage: true,
        autoPlay: true,
        animateToClosest: true,
        autoPlayCurve: Curves.easeInBack,
      ),
      items: items,
    );
  }
}
