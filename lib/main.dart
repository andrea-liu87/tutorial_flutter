import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial_flutter/application_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black54,
            title: Consumer<ApplicationColor>(
              builder: (context, applicationColor, _) => Text(
                'Provider State Management',
                style: TextStyle(color: applicationColor.applicationColor),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ApplicationColor>(
                  builder: (context, applicationColor, _) => AnimatedContainer(
                    margin: EdgeInsets.all(5),
                      width: 200,
                      height: 200,
                      color: applicationColor.applicationColor,
                      duration: Duration(milliseconds: 500)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text('AB'),
                    ),
                    Consumer<ApplicationColor>(
                        builder: (context, applicationColor, _) =>
                            Switch(
                                value: applicationColor.isLightBlue,
                                onChanged: (newValue) {
                                  applicationColor.setLightBlue(newValue);
                                }),
                    ),
                    Container(margin: EdgeInsets.all(5), child: Text('LB')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
