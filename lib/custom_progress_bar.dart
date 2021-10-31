import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  final double width;

  CustomProgressBar(this.width);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.timer,
          color: Colors.black38,
        ),
        SizedBox(
          width: 10,
        ),
        Stack(
          children: [
            Container(
              width: width,
              height: 15,
              decoration: BoxDecoration(color:Colors.grey[300], borderRadius: BorderRadius.circular(10)),
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: width * 0.5,
                height: 15,
                decoration: BoxDecoration(color:Colors.green[400], borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
