import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final Widget? child;
  final double? width;
  final Color? backgroundColor;
  const CustomContainer(
      {this.height, super.key, this.child, this.width, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor ?? ColorConstant.whiteBackgroundColor,
        border: Border.all(
          color: ColorConstant.blackColor,
          width: Constants.defaultLineWeight,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            Constants.defaultRadius - 20,
          ),
        ),
      ),
      child: child,
    );
  }
}
