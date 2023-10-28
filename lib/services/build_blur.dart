import 'dart:ui';

import 'package:flutter/material.dart';

Widget buildBlur({
  required Widget child,
  double sigmaX = 10,
  double sigmaY = 10,
}) => ClipRRect(
  borderRadius: BorderRadius.zero,
  child: BackdropFilter(
    filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
    child: child,
  ),
);