import 'package:flutter/material.dart';
import 'package:tutorial_flutter/postresult.dart';

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
          title: Text('Http request (POST method)'),
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
  PostResult postResult = null;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text((postResult != null)
              ? postResult.id +
                  " | " +
                  postResult.name +
                  " | " +
                  postResult.job +
                  " | " +
                  postResult.createdAt
              : 'PostResult still null'),
          RaisedButton(
            onPressed: () {
              PostResult.connectToApi('Badu', 'Engineer').then((value){ postResult =  value;});
              setState(() {});
            },
            child: Text('Connect'),
          ),
        ],
      ),
    );
  }
}
