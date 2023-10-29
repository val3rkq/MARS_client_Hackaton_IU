import 'package:flutter/cupertino.dart';
import '../generated/l10n.dart';

String getPressure(double pressure, String unit, BuildContext context) {
  if (unit == S.of(context).pa) {
    return (pressure * 133.3).toStringAsFixed(2);
  }
  return pressure.toStringAsFixed(2);
}
