import 'package:flutter/cupertino.dart';

import '../generated/l10n.dart';

String getSpeed(double power, String unit, BuildContext context) {
  double spd = 1.0;
  if (unit == S.of(context).ms) {
    spd = 167 * power / 100;
  }
  else if (unit == S.of(context).kmh) {
    spd = 601.2 * power / 100;
  }
  else if (unit == S.of(context).mphh) {
    spd = 373.6 * power / 100;
  }
  return spd.toStringAsFixed(2);
}
