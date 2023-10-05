import 'package:eco_club_mohil_version/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          isFirstPage: false,
          label: 'Quiz',
          context: context,
          isHomePage: false,
          isTabBarPage: false),
      body: const Column(
        children: [],
      ),
    );
  }
}
