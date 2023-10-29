import 'package:hive_flutter/hive_flutter.dart';

import '../constants/constants.dart';

class LocalStorage {

  // var box = Hive.box(StorageBoxName);

  String? temperatureUnit = '°C';
  String? pressureUnit = 'mmHg';
  String? speedUnit = 'm / s';

  // void getStorage() {
  //   temperatureUnit = box.get('TEMP_UNIT');
  //   pressureUnit = box.get('PRESS_UNIT');
  //   speedUnit = box.get('SPEED_UNIT');
  //   // ...
  // }
  //
  // void updateStorage() {
  //   box.put('TEMP_UNIT', temperatureUnit);
  //   box.put('PRESS_UNIT', pressureUnit);
  //   box.put('SPEED_UNIT', speedUnit);
  // }

}
