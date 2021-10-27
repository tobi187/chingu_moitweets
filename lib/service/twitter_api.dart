import 'package:http/http.dart' as http;

class TwitterWorker {
  final urlEndpoint =
      "https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=";
  final String _apiKey = "7ce9a763-d1b8-4473-82c5-ca51f776a1e8";

  Future<String> getUserTweets(String userName) async {
    try {
      Uri uri = Uri.parse(
          "https://sharedshopping.eu.pythonanywhere.com/api/v2/twitter?apikey=" +
              _apiKey);
      http.Response res = await http.post(uri, body: {"username": userName});

      if (res.statusCode == 200) {
        var data = res.body;
        return data;
      } else {
        return "Error: Status Code ${res.statusCode}";
      }
    } catch (e) {
      var response = "Error: Sry something went wrong: $e";
      return response;
    }
  }
}
