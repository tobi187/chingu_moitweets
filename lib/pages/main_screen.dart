import 'package:flutter/material.dart';
import 'package:mochitweet/widgets/actions.dart';
import 'package:mochitweet/widgets/json_display.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.username}) : super(key: key);
  final String username;
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String fileName = "";
  String chosenFileName = "No file choosen";

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.green,
              height: screenSize.height * 0.2,
              width: constraints.maxWidth * 0.6,
              child: const Center(child: Text("placeolder")),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: screenSize.height * 0.3,
              width: constraints.maxWidth * 0.6,
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.red,
              ),
              child: const JsonDisplay(),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: constraints.maxWidth * 0.6,
              height: screenSize.height * 0.3,
              color: Colors.blue,
              child: const ActionMenu(),
            ),
          )
        ],
      ),
    );
  }
}
