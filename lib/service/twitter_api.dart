import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pretty_json/pretty_json.dart';

class TwitterWorker {
  final urlEndpoint =
      "https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=";
  final String _apiKey =
      "AAAAAAAAAAAAAAAAAAAAAOuAVAEAAAAAKNH13FqF6gCD2ClMnRwFZtg8nvw%3DKIPhSnLsyB3d5WgbVlluVdLon7BYYHJQbKmQqpWT3sl2UWQL0d ";

  Future<String> getUserTweets(String userName) async {
    try {
      Map<String, String> header = {"Authorization": "Bearer $_apiKey"};

      Uri uri = Uri.parse(urlEndpoint + userName + "&count=2");

      http.Response res = await http.get(uri, headers: header);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        prettyJson(data);
        return prettyJson(data, indent: 4);
      } else {
        return "Error: Status Code ${res.statusCode}";
      }
    } catch (e) {
      var response = "Error: Sry something went wrong: $e";
      return response;
    }
  }
}
