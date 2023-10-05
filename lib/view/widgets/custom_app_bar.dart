import 'package:eco_club_mohil_version/controllers/bottom_tab_bar_provider.dart';
import 'package:eco_club_mohil_version/view/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/constants.dart';
import '../screens/menu.dart';

PreferredSizeWidget customAppBar({
  required bool isFirstPage,
  required String label,
  required BuildContext context,
  required bool isHomePage,
  required bool isTabBarPage,
}) {
  return AppBar(
    shadowColor: Colors.transparent,
    toolbarHeight: 60,
    shape: const RoundedRectangleBorder(
      side: BorderSide(
          color: ColorConstant.blackColor, width: Constants.defaultLineWeight),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(Constants.defaultRadius),
        bottomRight: Radius.circular(Constants.defaultRadius),
      ),
    ),
    backgroundColor: ColorConstant.whiteBackgroundColor,
    leading: (isFirstPage || (!isHomePage && isTabBarPage))
        ? Consumer(
            builder: (context, ref, child) {
              // var tab = ref.watch(currentNavItemProvider);
              return GestureDetector(
                onTap: () => (!isHomePage && isTabBarPage)
                    ? ref.read(currentNavItemProvider.notifier).state =
                        NavigationItem.Home
                    // ? Navigator.of(context).pushReplacement(
                    //     MaterialPageRoute(
                    //       builder: (context) => const HomeScreen(),
                    //     ),
                    //   )
                    : Navigator.of(context).pop(),
                child: const Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 30,
                  color: ColorConstant.blackColor,
                ),
              );
            },
          )
        : null,
    actions: [
      Expanded(
        child: Padding(
          // width: 390,
          padding: isFirstPage || (!isHomePage && isTabBarPage)
              ? const EdgeInsets.only(left: 50, right: 25)
              : const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  isHomePage
                      ? const Text(
                          'Morning, ',
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.black,
                          ),
                        )
                      : const SizedBox(),
                  Text(
                    '$label!',
                    style: const TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MenuScreen(),
                    ),
                  );
                },
                child: const Image(
                  image: AssetImage('assets/bottomImages/menu.png'),
                  height: 30,
                  width: 30,
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}
