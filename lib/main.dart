import 'package:flutter/material.dart';
import 'package:tutorial_flutter/postresult.dart';
import 'user.dart';

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
          title: Text('Http request (Kumpulan data)'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String output = "tidak ada data";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(output),
          RaisedButton(
            onPressed: () {
              User.connectToAPI('2').then((value){
              for (int i = 0; i<value.length; i++){
                output = output + "[" + value[i].name + "]";
              }
              setState(() {});
              });
            },
            child: Text('Connect'),
          ),
        ],
      ),
    );
  }
}
