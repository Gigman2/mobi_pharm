import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

List<String> currentPin = ["", "", "", ""];

TextEditingController PinOneController = TextEditingController();
TextEditingController PinTwoController = TextEditingController();
TextEditingController PinThreeController = TextEditingController();
TextEditingController PinFourController = TextEditingController();

var outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10.0),
  borderSide: BorderSide(color: Colors.red)
);

class _OTPScreenState extends State<OTPScreen>{
  int pinIndex = 0;
   Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
            child: Container(
                child: Column (
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget> [
                          buildSecurityText(),
                          SizedBox(height: 40.0,),
                          buildPinRow()
                        ],
                      )
                    )
                ],
              ),
            )
          ),
        ]
      )
    );
  }
  buildPinRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        PINNumber(
          outlineInputBorder: outlineInputBorder,
          textEditingController: PinOneController,
        )
      ],
    );
  }

  buildSecurityText(){
    return Text(
      "Security PIN", 
      style: TextStyle(
        color: Colors.blue, 
        fontSize: 21.0
      )
    );
  }
}  

class PINNumber extends StatelessWidget {
  final TextEditingController textEditingController;
  final OutlineInputBorder outlineInputBorder;
  PINNumber({this.textEditingController, outlineInputBorder});
  @override

  Widget build(BuildContext context) {
    return Container (
      width: 50.0
    )
  }
}