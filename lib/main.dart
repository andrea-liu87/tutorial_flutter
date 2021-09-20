import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('QR Code Generator'),),
        body: Center(
            child: Container(
              margin: EdgeInsets.all(50),
              child: QrImage(
                version: 6,
                data: "http://github.com/andrea-liu87",
                padding: EdgeInsets.all(20),
              ),
            ),
        ),
      ),
    );
  }
}
