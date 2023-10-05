import 'package:flutter/material.dart';

import '../../utils/constants.dart';

PreferredSizeWidget customAppBar({
  required bool isFirstPage,
  required String label,
  BuildContext? context,
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
    leading: isFirstPage
        ? GestureDetector(
            onTap: () => Navigator.of(context!).pop(),
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              size: 30,
              color: ColorConstant.blackColor,
            ),
          )
        : null,
    actions: [
      Expanded(
        child: Padding(
          // width: 390,
          padding: isFirstPage
              ? const EdgeInsets.only(left: 50, right: 25)
              : const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Morning, ',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                    ),
                  ),
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
                onTap: () {},
                child: const Image(
                  image: AssetImage('assets/bottomImages/house.png'),
                  height: 20,
                  width: 20,
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}
