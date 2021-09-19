import 'package:flutter/material.dart';
import 'package:tutorial_flutter/tab_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
        color: Colors.indigo,
        border: Border(bottom: BorderSide(color: Colors.white)),
      ),
      tabs: [
        Tab(
          icon: Icon(Icons.comment),
          text: 'comments',
        ),
        Tab(
          icon: Icon(Icons.email),
          text: 'email',
        ),
        Tab(
          icon: Icon(Icons.save),
          text: 'saved',
        )
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Latihan Tab Bar Layout'),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(color: Colors.amber, child: myTabBar),
            ),
          ),
          body: TabBarView(
            children: [
              TabView(color: Colors.green, text: 'This is Tab 1'),
              TabView(color: Colors.red, text: 'This is Tab 2'),
              TabView(color: Colors.blue, text: 'This is Tab 3'),
            ],
          ),
        ),
      ),
    );
  }
}
