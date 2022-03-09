import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tutorial_flutter/color_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:bloc/bloc.dart';

void main() async {
  BlocSupervisor.delegate = await HydratedBlocDelegate.build();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ColorBloc>(
        builder: (context) => ColorBloc(),
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
            cBloc.onEvent(ColorEvent.to_amber);
          }),
          SizedBox(
            width: 10,
            height: 10,
          ),
          FloatingActionButton(
              backgroundColor: Colors.lightBlue, onPressed: () {
            cBloc.onEvent(ColorEvent.to_lightblue);
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


