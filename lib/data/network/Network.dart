import 'dart:async';

import 'package:http/http.dart';

class Network {
  /// variables
  final String url;

  /// constructor
  Network(this.url);

  /// Network Method to get any kind of Data (it is like creating RetrofitClient  in Android  )
  Future<Response> getData() async {
    print("Calling url: $url");

    /// get Response
    var response = await get(
        // encode url
        Uri.encodeFull(url),
        // only accept json response
        headers: {"Accept": "application/json"});

    /// return response body
    return response;
  }
}
