import 'package:flutter/material.dart';

class ActionMenu extends StatelessWidget {
  const ActionMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: TextField(
            decoration: const InputDecoration(hintText: "FileName"),
            onChanged: (String value) {},
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("<- Enter a filename or choose a excisting file ->"),
              const Text("Your Files ar written to"),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(onPressed: () {}, child: const Text("Download")),
                ElevatedButton(onPressed: () {}, child: const Text("Cancel")),
              ]),
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("chosenFileName"),
              OutlinedButton(
                onPressed: () {},
                child: const Text("Choose File"),
              )
            ],
          ),
        )
      ],
    );
  }
}
