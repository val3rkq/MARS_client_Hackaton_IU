import 'package:flutter/material.dart';

Widget getPadding({
  required BuildContext context,
  required Widget child,
  double x = 0.0,
  double y = 0.0,
}) {
  double left = 0;
  double right = 0;
  double top = 0;
  double bottom = 0;

  // double constSpace = MediaQuery.of(context).size.width * 0.48 / 20 - 1;
  double constSpace = 60;

  if (x < 0) {
    left = 0;
    right = x.abs() * constSpace;
  } else {
    left = x * constSpace;
    right = 0;
  }

  if (y < 0) {
    top = y.abs() * constSpace;
    bottom = 0;
  } else {
    top = 0;
    bottom = y * constSpace;
  }

  return Padding(
    padding: EdgeInsets.fromLTRB(left, top, right, bottom),
    child: child,
  );
}
