import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ActionMenu extends StatefulWidget {
  const ActionMenu({Key? key}) : super(key: key);

  @override
  State<ActionMenu> createState() => _ActionMenuState();
}

class _ActionMenuState extends State<ActionMenu> {
  String? fileName = "no file chosen";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "FileName",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                onChanged: (String value) {},
              ),
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
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Download")),
                  const SizedBox(width: 20),
                  ElevatedButton(onPressed: () {}, child: const Text("Cancel")),
                ]),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(fileName == null ? "no file chosen" : fileName!),
                ElevatedButton(
                  onPressed: () async {
                    FilePickerResult? result = await FilePicker.platform
                        .pickFiles(
                            allowedExtensions: ["json"],
                            type: FileType.custom,
                            allowMultiple: false);
                    //File file = File(result!.files.single.path!);
                    fileName = result!.files.first.name;
                    setState(() {});
                  },
                  child: const Text("Choose File"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
