import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mochitweet/service/twitter_api.dart';

class JsonDisplay extends StatefulWidget {
  JsonDisplay({Key? key, this.userName = ""}) : super(key: key);
  String userName;
  @override
  State<JsonDisplay> createState() => _JsonDisplayState();
}

class _JsonDisplayState extends State<JsonDisplay> {
  String jsonData = "";

  Future<void> getUserData() async {
    jsonData = await TwitterWorker().getUserTweets(widget.userName);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                child: ToggleButtons(
                  direction: Axis.horizontal,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text("Formatted"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text("Raw"),
                    ),
                  ],
                  isSelected: const [false, true],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: Text("JsonData:"),
              )
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all()),
              child: jsonData == ""
                  ? const Center(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                      child: SelectableText(
                        jsonData,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
