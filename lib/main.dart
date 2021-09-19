import 'package:flutter/material.dart';
import 'package:tutorial_flutter/tab_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Text('Latihan Tab Bar Layout'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.comment),
                  text: 'comments',
                ),
                Tab(
                  child: Image(
                    image: NetworkImage(
                        'https://cdn1.iconfinder.com/data/icons/logos-brands-in-colors/231/among-us-player-white-512.png'),
                  ),
                ),
                Tab(text: 'Tab 3',),
                Tab(icon: Icon(Icons.email), text: 'Tab 4',),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              TabView(color: Colors.red, text: 'This is Tab 1'),
              TabView(color: Colors.blue, text: 'This is Tab 2'),
              TabView(color: Colors.purple, text: 'This is Tab 3'),
              TabView(color: Colors.green, text: 'This is Tab 4'),
            ],
          ),
        ),
      ),
    );
  }
}
