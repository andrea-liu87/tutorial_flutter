import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_flutter/time_state.dart';
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
          child: ChangeNotifierProvider<TimeState>(
            create: (context) => TimeState(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<TimeState>(
                  builder: (context, timeState, _) => Text(
                      timeState.timer.toString(), style: TextStyle(fontSize: 50),),
                ),
                SizedBox(
                  height: 15,
                ),
                Consumer<TimeState>(
                  builder: (context, timeState, _) => CustomProgressBar(
                      width: 200, value: timeState.timer, totalValue: 15),
                ),
                SizedBox(
                  height: 15,
                ),
                Consumer<TimeState>(
                  builder: (context, timeState, _) => RaisedButton(
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'start',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      onPressed: () {
                        Timer.periodic(Duration(seconds: 1), (timer) {
                          if (timeState.timer > 0) {
                            timeState.timer -= 1;
                          } else {
                            timer.cancel();
                            timeState.timer = 15;
                          }
                        });
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
