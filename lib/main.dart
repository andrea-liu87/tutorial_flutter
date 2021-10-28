import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  bool isBlack = true;
  bool isStop = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Timer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _counter.toString(),
                style: TextStyle(
                    color: (isBlack) ? Colors.black : Colors.red, fontSize: 50),
              ),
              RaisedButton(
                  child: Text('Ubah warna secara langsung'),
                  onPressed: () {
                    isBlack = !isBlack;
                    setState(() {});
                  }),
              RaisedButton(
                  child: Text('Ubah warna setelah 5 detik'),
                  onPressed: () {
                    Timer(Duration(seconds: 5), () {
                      isBlack = !isBlack;
                      setState(() {});
                    });
                  }),
              RaisedButton(
                  child: Text('Start Timer'),
                  onPressed: () {
                    _counter = 0;
                    isStop = false;
                    Timer.periodic(Duration(seconds: 1), (timer) {
                      if (isStop) timer.cancel();
                      _counter++;
                      setState(() {});
                    });
                  }),
              RaisedButton(child: Text('Stop Timer'), onPressed: () {
                isStop = true;
              }),
            ],
          ),
        ),
      ),
    );
  }
}
