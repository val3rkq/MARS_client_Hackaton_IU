import 'dart:convert';

import 'package:mars_client/constants/constants.dart';

import 'data.dart';
import 'package:http/http.dart' as http;

class DataService {

  // get data
  Future<Data> getData() async {
    var endpoint = Uri.parse('$API_LINK/v1/state');
    var response = await http.get(endpoint);

    var body = jsonDecode(response.body);
    return Data.fromJSON(body);
  }

}