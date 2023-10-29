String getSpeed(double power, String unit) {
  double spd  = 0.0;
  if (unit == 'm / s') {
    spd = 167 * power / 100;
  }
  else if (unit == 'km / h') {
    spd = 601.2 * power / 100;
  }
  else if (unit == 'mph / h') {
    spd = 373.6 * power / 100;
  }
  return spd.toStringAsFixed(2);
}
