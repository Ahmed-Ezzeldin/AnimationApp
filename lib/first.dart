import 'package:flutter/material.dart';

class FirstTab extends StatefulWidget {
  @override
  _FirstTabState createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  double ang = 0;
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Slider(
          value: sliderValue,
          onChanged: (double value) {
            setState(() {
              sliderValue = value;
            });
          },
        ),
        GestureDetector(
            child: Transform.rotate(
          angle: sliderValue* 4.7,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
        )),
      ],
    ));
  }
}
