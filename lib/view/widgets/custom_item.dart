import 'package:eco_club_mohil_version/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class CustomItemBar extends StatelessWidget {
  final String heading;
  final String label;
  final String description;
  final String labelImage;
  final void Function()? onTap;
  final Color? mainBackgroundColor;
  const CustomItemBar(
      {super.key,
      this.mainBackgroundColor,
      required this.label,
      required this.labelImage,
      required this.description,
      required this.heading,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      width: width,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: mainBackgroundColor ?? ColorConstant.lightMainColor,
        border: const Border.symmetric(
          horizontal: BorderSide(
            color: ColorConstant.blackColor,
            width: Constants.defaultLineWeight,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(text: heading, isHeading: true),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: onTap,
              child: Container(
                height: 100,
                width: width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteBackgroundColor,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage(labelImage),
                          height: 30,
                          width: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        text(text: label, isLabel: true)
                      ],
                    ),
                    text(text: description, isDescription: true),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
