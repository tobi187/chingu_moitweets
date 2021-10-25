import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class JsonDisplay extends StatelessWidget {
  const JsonDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ToggleButtons(
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
            child: SingleChildScrollView(
              child: Text("kasdl", overflow: TextOverflow.clip),
            ),
          ),
        ),
      ],
    );
  }
}
