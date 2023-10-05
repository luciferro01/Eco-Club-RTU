import 'package:eco_club_mohil_version/controllers/bottom_tab_bar_provider.dart';
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

  Widget customNavigatioBarItem(
      String label, String image, bool isUtmostLeft, bool isSelected) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFFACD27D) : const Color(0xFFFFFFFF),
        border: Border(
          left: !isUtmostLeft
              ? const BorderSide(color: Colors.black, width: 3)
              : BorderSide.none,
          top: const BorderSide(color: Colors.black, width: 3),
        ),
      ),
      height: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/bottomImages/house.png'),
            height: 20,
            width: 20,
          ),
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
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
        ...items.map(
          (e) => Expanded(
            child: InkWell(
              onTap: () {
                return onTap(e);
              },
              splashColor: Colors.transparent,
              child: customNavigatioBarItem('Home', '',
                  items.first == e ? true : false, e == selectedItem),
            ),
          ),
        ),
      ],
    );
  }
}
