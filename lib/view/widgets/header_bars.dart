import 'package:eco_club_mohil_version/view/widgets/custom_container.dart';
import 'package:eco_club_mohil_version/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

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
            child: const Image(
              image: AssetImage(
                'assets/images/environment.png',
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
              text: 'ENO - National Conference @ RTU',
              isLabel: true,
              fontSize: 22,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.calendar_today_rounded),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '8-10 Oct',
                          style: TextStyle(
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
                        Icon(Icons.apartment_rounded),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Petroleum',
                          style: TextStyle(
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
