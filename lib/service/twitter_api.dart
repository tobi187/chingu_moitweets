import 'package:http/http.dart' as http;

class TwitterWorker {
  final urlEndpoint =
      "https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=";
  final bearer =
      "AAAAAAAAAAAAAAAAAAAAAOuAVAEAAAAAZo31h2Cjo7LwHnSTW8UYrKd%2BRDg%3DQvPMW0L4ZNsiBjP16HdKED8e1ZwPmOQ4E9hrea7GQBPNxOcMTJ";

  final apiKey = "1ih4mckyg2IEJkx7HR2JBQGcL";
  final apiSecret = "oWWRFGP1E29ZPYh1FEXoMgm2yM3odchw1PHcK6ivDbtfTM2PKW";
  final token = "3333051718-OKHGj7KFTIo3a50uQ0879wb1wvQJ3EOcUkX1GXM";
  final tokenSecret = "wyuUFwb6vjtho1AdgRfUXVGvMbNHXdlntIfgwZPG6mHY4";
  Future<String> getUserTweets(String userName) async {
    try {
      Uri uri = Uri.parse(
          "https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name=" +
              userName +
              "&count=2");
      final _header = {"Authorization": "Bearer $bearer"};
      var response = await http.read(uri, headers: _header);
      if (response.isNotEmpty) {
        var data = response;
        return data;
      } else {
        return "Error: Status Code";
      }
    } catch (e) {
      var response = "Error: Sry something went wrong: $e";
      return response;
    }
  }
}
