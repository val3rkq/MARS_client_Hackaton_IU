import 'package:flutter/material.dart';
import '../generated/l10n.dart';

String getTemperature(double temp, String unit, BuildContext context) {
  if (unit == S.of(context).f) {
    return (temp * 1.4 + 32).toStringAsFixed(2);
  }
  return temp.toStringAsFixed(2);
}
