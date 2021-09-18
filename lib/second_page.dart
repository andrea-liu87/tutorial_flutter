import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Latihan Hero Animation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Hero(
            tag: 'sakura-pic',
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              child: Image(
                image: NetworkImage('https://www.generasia.com/w/images/2/24/HKT48_Miyawaki_Sakura_2021.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
