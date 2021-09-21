import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradient Opacity'),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                  colors: [Colors.black, Colors.white.withOpacity(0.0)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)
                  .createShader(Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.75,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1506038634487-60a69ae4b7b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=804&q=80'),
            ),
          ),
        ),
      ),
    );
  }
}

