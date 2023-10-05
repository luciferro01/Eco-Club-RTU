import 'package:eco_club_mohil_version/view/widgets/custom_container.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class HeaderBar extends StatelessWidget {
  final String image;
  final String date;
  final String label;
  final String venue;
  const HeaderBar(
      {super.key,
      required this.image,
      required this.date,
      required this.label,
      required this.venue});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return CustomContainer(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(Constants.defaultRadius - 10),
            child: Image(
              image: AssetImage(
                image,
              ),
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          const Divider(
            color: ColorConstant.blackColor,
            thickness: Constants.defaultLineWeight,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: text(
              text: label,
              isLabel: true,
              fontSize: 22,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.calendar_today_rounded),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          date,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.apartment_rounded),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          venue,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
