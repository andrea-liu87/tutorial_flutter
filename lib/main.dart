import 'package:flutter/material.dart';
import 'custom_progress_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Progress Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomProgressBar(200),
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
                  padding: EdgeInsets.all(10),
                  child: Text('start', style: TextStyle(fontSize: 20, color: Colors.white),),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
