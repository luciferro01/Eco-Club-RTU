import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatelessWidget {
  final List<Widget> items;
  final double? height;
  const CustomCarousel({super.key, required this.items, this.height});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: height ?? 200.0,
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
