import 'dart:convert';

import 'package:mars_client/const.dart';

import 'data.dart';
import 'package:http/http.dart' as http;

class DataService {
  final String _url = '$apiLink/v1/state';
  final String _moveUrl = '$apiLink/v1/move';
  final String _autopilotUrl = '$apiLink/v1/autopilot';

  // get status code
  Future<int> getStatusCode() async {
    var endpoint = Uri.parse(_url);
    var response = await http.get(endpoint);
    return response.statusCode;
  }

  // move action
  Future<void> moveAction(int direction, int distance) async {
    final response = await http.post(
      Uri.parse(_moveUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, int>{
        'direction': direction,
        'distance': distance,
      }),
    );

    if (response.statusCode == 204) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }

  // get data
  Future<Data> getData() async {
    var endpoint = Uri.parse(_url);
    var response = await http.get(endpoint);

    var body = jsonDecode(response.body);
    return Data.fromJSON(body);
  }

  // autopilot
  Future<void> autopilot(bool started) async {
    final response = await http.post(
      Uri.parse(_autopilotUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, bool>{
        'data': started,
      }),
    );

    if (response.statusCode == 204) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }
}
