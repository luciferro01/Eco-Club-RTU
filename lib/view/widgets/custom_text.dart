import 'package:flutter/material.dart';

Text text(
    {required String text,
    bool? isHeading,
    bool? isLabel,
    bool? isDescription,
    int? maxLines,
    FontWeight? fontWeight,
    double? fontSize}) {
  return isHeading != null && isHeading
      ? Text(
          text,
          style: TextStyle(
            fontSize: 26,
            fontWeight: fontWeight ?? FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
          textAlign: TextAlign.justify,
          maxLines: maxLines ?? 2,
        )
      : isLabel != null && isLabel
          ? Text(
              text,
              style: TextStyle(
                fontSize: fontSize ?? 24,
                fontWeight: fontWeight ?? FontWeight.w800,
                overflow: TextOverflow.ellipsis,
              ),
              textAlign: TextAlign.justify,
              maxLines: maxLines ?? 2,
            )
          : Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: fontWeight ?? FontWeight.w400,
              ),
              maxLines: maxLines ?? 2,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
            );
}
