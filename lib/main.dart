import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_flutter/color_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ColorBloc(Colors.amber),
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorBloc cBloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter BLoC'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              backgroundColor: Colors.amber, onPressed: () {
            cBloc.add(ColorEvent.to_amber);
          }),
          SizedBox(
            width: 10,
            height: 10,
          ),
          FloatingActionButton(
              backgroundColor: Colors.lightBlue, onPressed: () {
            cBloc.add(ColorEvent.to_lightblue);
          }),
        ],
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder:(context, colorState) => AnimatedContainer(
            duration: Duration(seconds: 2),
            width: 100,
            height: 100,
            color: colorState,
          ),
        ),
      ),
    );
  }
}


