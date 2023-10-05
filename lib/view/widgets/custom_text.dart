import 'package:flutter/material.dart';

Text text(
    {required String text,
    bool? isHeading,
    bool? isLabel,
    bool? isDescription,
    double? fontSize}) {
  return isHeading != null && isHeading
      ? Text(
          text,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        )
      : isLabel != null && isLabel
          ? Text(
              text,
              style: TextStyle(
                fontSize: fontSize ?? 24,
                fontWeight: FontWeight.w800,
                overflow: TextOverflow.ellipsis,
              ),
            )
          : Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            );
}
