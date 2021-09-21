import 'package:flutter/material.dart';
import 'colorfull_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Colorful Button'),),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorfulButton(Colors.pink, Colors.blue, Icons.adb),
              ColorfulButton(Colors.green, Colors.grey, Icons.save),
              ColorfulButton(Colors.blueGrey, Colors.orangeAccent, Icons.edit),
            ],
          ),
        ),
      ),
    );
  }
}
