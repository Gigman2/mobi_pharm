import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'authentication/login.dart';
import  '../utitlities/styles.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator(){
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++){
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }

    return list;
  }

  Widget _indicator(bool isActive){
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      width: isActive ? 24.0 : 16.0,
      height: 8.0,
      decoration: BoxDecoration(
        color: isActive ?  Color(0xFF84AEE0) : Color(0xFF2F80ED),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      )
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>
      (
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => LoginScreen())
                    ),
                    child: Text(
                      "Skip", 
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20.0
                        ),
                      )
                  )
                ),
              ),
              Container(
                height: 440.0,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 20.0),
                          Center(
                            child: Text(
                              'Live Chat With Pharmacist', 
                              textAlign: TextAlign.center,
                              style: kTitleStyle,
                            ),
                          ),
                          Center(
                            child: Image(
                              image: AssetImage('assets/images/chatting.png'),
                              height: 250.0,
                              width: 250.0,
                            ),
                          ),
                          SizedBox(height:  15.0),
                          Text(
                            'Connect people to professional pharmacist',
                            style: kSubtitleStyle,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 0.0),
                          Center(
                            child: Text(
                              'Pharmacy Store', 
                              style: kTitleStyle,
                            ),
                          ),
                          Center(
                            child: Image(
                              image: AssetImage('assets/images/medicine.png'),
                              height: 250.0,
                              width: 250.0,
                            ),
                          ),
                          SizedBox(height:  15.0),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                            style: kSubtitleStyle,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 0.0),
                          Center(
                            child: Text(
                              'Free Delivery', 
                              style: kTitleStyle,
                            ),
                          ),
                          Center(
                            child: Image(
                              image: AssetImage('assets/images/on_the_way.png'),
                              height: 250.0,
                              width: 250.0,
                            ),
                          ),
                          SizedBox(height:  15.0),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                            style: kSubtitleStyle,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ),
              _currentPage != _numPages - 1 ? Expanded(child: Align(
                alignment: FractionalOffset.bottomRight,
                child: FlatButton(
                  onPressed: () => {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease
                    )
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22.0
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.blue,
                        size: 30.0
                      )
                    ]
                  ),
                ),)): Text(''),
                _currentPage == _numPages - 1 ?
                   Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => LoginScreen())),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 0.0),
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold
                                )
                              )
                            )
                          )
                      )
                    ),
                   ) 
                : Text("")
              ],
            ),
          ), 
        )
      ),
    );
  }
}