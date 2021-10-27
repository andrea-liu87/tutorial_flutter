import 'package:flutter/material.dart';
import 'package:tutorial_flutter/color_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc colorBloc = new ColorBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('BLoC tanpa library'),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                backgroundColor: Colors.amber, onPressed: () {
                  colorBloc.eventSink.add(ColorEvent.to_amber);
            }),
            SizedBox(
              width: 10,
              height: 10,
            ),
            FloatingActionButton(
                backgroundColor: Colors.lightBlue, onPressed: () {
                  colorBloc.eventSink.add(ColorEvent.to_LightBlue);
            }),
          ],
        ),
        body: Center(
          child: StreamBuilder(
            initialData: Colors.lightBlue,
            stream: colorBloc.colorState,
            builder:(context, snapshot) => AnimatedContainer(
              duration: Duration(seconds: 2),
              width: 100,
              height: 100,
              color: snapshot.data,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    colorBloc.dispose();
  }
}
