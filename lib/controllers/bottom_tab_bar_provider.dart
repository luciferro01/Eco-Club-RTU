// ignore_for_file: constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';

enum NavigationItem {
  Home,
  Events,
  // Community,
  Learn,
}

final currentNavItemProvider = StateProvider<NavigationItem>((ref) {
  return NavigationItem.Home;
});
