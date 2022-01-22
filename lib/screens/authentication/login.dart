import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import 'otp.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
   @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
          ),
          Padding(
            padding: const EdgeInsets.only(top:0.0),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  SizedBox(height: 40.0),
                  Center(
                    child: Image(
                      image: AssetImage('assets/images/mobile_login.png'),
                      height: 200.0,
                      width: 250.0,
                    )
                  ),
                  Center(
                    child: Text('Welcome back!',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 23.0,
                        color: Color(0xFF3594DD),
                        decoration: TextDecoration.none
                      )
                    )
                  ), 
                  SizedBox(height: 10.0),
                  Center(
                    child: Text('Log in to your existing account',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0,
                        color: Colors.blueGrey,
                        decoration: TextDecoration.none
                      )
                    )
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(horizontal:10.0),
                              child: Icon(
                                Icons.person_outline,
                                color: Colors.grey,
                              ),
                            ),
                            labelText: "Enter Email",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(35.0)),
                              borderSide: BorderSide(),
                            ),
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(35.0))
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.symmetric(horizontal:10.0),
                              child: Icon(
                                Icons.lock_outline,
                                color: Colors.grey,
                              ),
                            ),
                            labelText: "Enter Password",
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(35.0)),
                              borderSide: BorderSide(),
                            ),
                          )
                        ),
                      ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                        'Forgot password?',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w300,
                          fontSize: 17.0,
                          color: Colors.blueGrey,
                          decoration: TextDecoration.none,
                        )
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          stops: [0.4,0.7,0.9],
                          colors: [
                            Color(0xFF56CCF2),
                            Color(0xFF3594DD),
                            Color(0xFF4590db),
                          ]
                        )
                      ),
                      child: Center(
                        child: Text('LOG IN',
                           style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            )
                          ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center, 
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right:20.0),
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(35.0)),
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xFF3594DD)
                                  )
                                ),
                                child: Center(
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(left:15.0),
                                        child: Icon(FontAwesomeIcons.google, color: Color(0xFF3594DD), size: 20.0,),
                                      ),
                                    ]
                                  )
                                ),
                              ),
                            ),
                          Container(
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(35.0)),
                              color: Colors.white,
                              border: Border.all(width: 1, color: Color(0xFF3594DD),)
                            ),
                            child: Center(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Icon(FontAwesomeIcons.facebookF, color: Color(0xFF3594DD), size: 20.0,),
                                  ),
                                ]
                              )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      Text('Don\'t have an account', 
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w300,
                          fontSize: 18.0,
                          color: Colors.blueGrey,
                          decoration: TextDecoration.none
                        )
                      ),
                      GestureDetector(
                        onTap: () => {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => OTPScreen())),
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left:5.0),
                          child: Text('sign up', 
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w300,
                              fontSize: 18.0,
                              color: Colors.blue,
                              decoration: TextDecoration.none
                            )
                          ),
                        ),
                      ),
                    ]
                  ),
                ]
              ),
            ),
          )
        ],
      ),
    );
  } 
}