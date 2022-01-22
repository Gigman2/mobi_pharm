import 'dart:async';
import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

void main() => runApp(MaterialApp (
  theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.white),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => OnboardingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget> [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.4,0.7,0.9],
                colors: [
                  Color(0xFF56CCF2),
                  Color(0xFF3594DD),
                  Color(0xFF4563DB),
                ]
              )),
          ),
          Column (
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                       Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white, 
                        radius: 50.0,
                        child: Icon(
                          Icons.local_pharmacy,
                          size: 50.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(backgroundColor: Colors.white,),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                  ],
                ),
              )
            ],
          )
        ]
      ),
    );
  }
}