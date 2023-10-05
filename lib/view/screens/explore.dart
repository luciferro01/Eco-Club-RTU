import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        isFirstPage: false,
        label: 'Explore',
        context: context,
        isHomePage: false,
        isTabBarPage: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
