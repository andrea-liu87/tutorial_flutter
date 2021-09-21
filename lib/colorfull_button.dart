import 'dart:math';

import 'package:flutter/material.dart';

class ColorfulButton extends StatefulWidget {
  ColorfulButton(this.mainColor, this.secondColor, this.iconData);

  Color mainColor, secondColor;
  IconData iconData;

  @override
  _ColorfulButtonState createState() =>
      _ColorfulButtonState(mainColor, secondColor, iconData);
}

class _ColorfulButtonState extends State<ColorfulButton> {
  _ColorfulButtonState(this.mainColor, this.secondColor, this.iconData);

  Color mainColor, secondColor;
  IconData iconData;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details){
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapUp: (details){
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapCancel: (){
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Transform.rotate(
        angle: pi / 4,
        child: Material(
          elevation: (isPressed) ? 5 : 10,
          borderRadius: BorderRadius.circular(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: (isPressed) ? secondColor : mainColor,
                    child: Transform.rotate(
                        angle: -pi/4,
                        child: Icon(iconData)),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
