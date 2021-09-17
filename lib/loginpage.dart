import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  double bigDia(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.8;

  double smallDia(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Positioned(
          top: -smallDia(context) / 5,
          right: -smallDia(context) / 6,
          child: Container(
            width: smallDia(context),
            height: smallDia(context),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffff77a9),
            ),
          ),
        ),
        Positioned(
          top: -bigDia(context) / 4,
          left: -bigDia(context) / 6,
          child: Container(
            width: bigDia(context),
            height: bigDia(context),
            child: Container(
              margin: EdgeInsets.only(
                  left: bigDia(context) / 3.2, top: bigDia(context) / 2.2),
              child: Text(
                'Driblee',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'DancingScript'),
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xeeec407a),
            ),
          ),
        ),
        Positioned(
          bottom: -smallDia(context) / 6,
          right: -smallDia(context) / 6,
          child: Container(
            width: smallDia(context),
            height: smallDia(context),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xfffce4ec),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ListView(children: [
            Container(
              margin: EdgeInsets.fromLTRB(50, 250, 50, 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email :',
                    labelStyle: TextStyle(
                      color: Color(0xffff77a9),
                    ),
                    icon: Icon(
                      Icons.email,
                      color: Color(0xffff77a9),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password :',
                    labelStyle: TextStyle(
                      color: Color(0xffff77a9),
                    ),
                    icon: Icon(
                      Icons.vpn_key_rounded,
                      color: Color(0xffff77a9),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 50, 0),
              child: Text(
                'FORGOT PASSWORD',
                style: TextStyle(color: Color(0xffff77a9)),
                textAlign: TextAlign.end,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(50, 20, 50, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        colors: [Color(0xeeec407a), Color(0xffff77a9)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: (){},
                        splashColor: Colors.amber,
                        child: Center(
                            child: Text(
                          'SIGN IN',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: (){},
                    child: Icon(Icons.facebook),
                    mini: true,
                    elevation: 0,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                    onPressed: (){},
                    child: Image(
                      width: 25,
                      height: 25,
                      image: AssetImage('assets/twitterlogo.png'),
                    ),
                    mini: true,
                    elevation: 0,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('DONT HAVE AN ACCOUNT?'),
                Text(' SIGN UP', style: TextStyle(color: Color(0xffff77a9)),),
              ],
            ),
          ]),
        ),
      ]),
    );
  }
}
