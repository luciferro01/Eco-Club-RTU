import 'package:eco_club_mohil_version/controllers/bottom_tab_bar_provider.dart';
import 'package:eco_club_mohil_version/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final List<NavigationItem> items;
  final void Function(NavigationItem) onTap;
  final NavigationItem selectedItem;

  const CustomBottomNavigationBar({
    required this.items,
    required this.onTap,
    required this.selectedItem,
    super.key,
  });

  static const List<Map<String, String>> bottomNavBarItems = [
    {'image': Assets.house, 'label': 'Home'},
    {'image': Assets.events, 'label': 'Events'},
    // {'image': Assets.community, 'label': 'Community'},
    {'image': Assets.learn, 'label': 'Explore'},
  ];

  Widget customNavigatioBarItem(bool isUtmostLeft, bool isSelected, int index) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected
            ? ColorConstant.mainColor
            : ColorConstant.whiteBackgroundColor,
        border: Border(
          left: !isUtmostLeft
              ? const BorderSide(
                  color: Colors.black, width: Constants.defaultLineWeight)
              : BorderSide.none,
          top: const BorderSide(
              color: Colors.black, width: Constants.defaultLineWeight - 0.3),
        ),
      ),
      height: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(bottomNavBarItems[index]['image']!),
            height: 25,
            width: 25,
          ),
          FittedBox(
            child: Text(
              bottomNavBarItems[index]['label']!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // ...items.map(
        //   (e) => Expanded(
        //     child: InkWell(
        //       onTap: () {
        //         return onTap(e);
        //       },
        //       splashColor: Colors.transparent,
        //       child: customNavigatioBarItem(
        //         items.first == e ? true : false,
        //         e == selectedItem,
        //       ),
        //     ),
        //   ),
        // ),

        ...items.asMap().keys.map(
          (index) {
            var e = items[index];
            return Expanded(
              child: InkWell(
                onTap: () {
                  return onTap(e);
                },
                splashColor: Colors.transparent,
                child: customNavigatioBarItem(
                    items.first == e ? true : false, e == selectedItem, index),
              ),
            );
          },
        )
      ],
    );
  }
}
