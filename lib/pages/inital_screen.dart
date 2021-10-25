import 'package:flutter/material.dart';
import 'package:mochitweet/pages/main_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  final TextEditingController _textContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: Center(
        child: SizedBox(
          height: 500,
          width: 500,
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                    hintText: "Enter Username",
                    contentPadding: EdgeInsets.symmetric(horizontal: 25.0)),
                controller: _textContoller,
                style: const TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _textContoller.clear();
                    },
                    child: const Text("Cancel"),
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.resolveWith(
                            (states) => const Size(100, 40))),
                  ),
                  const SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen(
                                    username: _textContoller.text,
                                  )));
                    },
                    child: const Text("Submit"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => _textContoller.text.isEmpty
                                ? Colors.grey
                                : Colors.blue),
                        fixedSize: MaterialStateProperty.resolveWith(
                            (states) => const Size(100, 40))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
