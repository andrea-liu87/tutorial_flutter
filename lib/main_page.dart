import 'package:flutter/material.dart';
import 'second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Container(
          margin: EdgeInsets.all(15),
          width: 100,
          height: 100,
          child: Hero(
            tag: 'sakura-pic',
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              child: Image(
                image: NetworkImage(
                    'https://www.generasia.com/w/images/2/24/HKT48_Miyawaki_Sakura_2021.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
