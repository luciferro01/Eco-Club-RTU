import 'package:eco_club_mohil_version/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        isFirstPage: false,
        label: 'TimePass',
        context: context,
        isHomePage: false,
        isTabBarPage: false,
      ),
    );
  }
}
