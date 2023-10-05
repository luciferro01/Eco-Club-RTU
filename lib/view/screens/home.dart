import 'package:eco_club_mohil_version/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(isFirstPage: false, label: 'MOHIL'),
      body: const Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
