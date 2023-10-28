import 'dart:convert';

class Data {

  //
  // coords [int]
  //

  List<dynamic>? coords;

  Data({
    this.coords,
  });

  Data.fromJSON(Map<String, dynamic> json) {
    coords = json['coords'];
  }
}
