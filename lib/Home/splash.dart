import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:space_cakes/Home/home/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(
        this.context, MaterialPageRoute(builder: (context) => repoHome()));
  }

  @override
  Widget build(BuildContext context) {
    return Separa();
  }

  Widget Separa() {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              (Color.fromARGB(0, 248, 248, 22)),
              (Color.fromARGB(0, 249, 249, 35))
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
        ),
        Center(
            child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 100),
                padding: EdgeInsets.only(left: 20, right: 20, top: 150),
                child: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.white,
                )))),
        Center(
          child: Container(
            child: Image.asset(
              'assets/logo.png',
              height: 250,
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 100),
            padding: EdgeInsets.only(left: 20, right: 20, top: 100),
            child: Text(
              "Space Cakes",
              style: TextStyle(
                  fontFamily: 'Raleway', color: Colors.black, fontSize: 25),
            ),
          ),
        )
      ]),
    );
  }
}
