import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controllers/bottom_tab_bar_provider.dart';
import '../widgets/custom_bottom_navigation_bar.dart';
import 'package:eco_club_mohil_version/view/screens/events.dart';
import 'package:eco_club_mohil_version/view/screens/home.dart';
import 'package:eco_club_mohil_version/view/screens/explore.dart';

class MotherScreen extends StatelessWidget {
  const MotherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final currentItem = ref.watch(currentNavItemProvider);
          return _buildScreen(currentItem);
        },
      ),
      bottomNavigationBar: Consumer(
        builder: (context, ref, child) {
          final currentItem = ref.watch(currentNavItemProvider);
          return CustomBottomNavigationBar(
            items: NavigationItem.values,
            onTap: (item) =>
                ref.read(currentNavItemProvider.notifier).state = item,
            selectedItem: currentItem,
          );
        },
      ),
    );
  }

  Widget _buildScreen(NavigationItem item) {
    switch (item) {
      case NavigationItem.Home:
        return const HomeScreen();
      // case NavigationItem.Community:
      //   return const CommunityScreen();
      case NavigationItem.Events:
        return const EventScreen();
      case NavigationItem.Learn:
        return const ExploreScreen();

      default:
        return Container(); // Handle other cases
    }
  }
}
