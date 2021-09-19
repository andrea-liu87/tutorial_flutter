import 'package:flutter/material.dart';

class TabView extends StatelessWidget {
  late Color color;
  late String text;

  TabView({Key? key, required Color color, required String text}) : super(key: key) {
    this.color = color;
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: this.color,
      child: Center(child: Text(this.text, style: TextStyle(fontSize: 20, color: Colors.white),)),
    );
  }
}
