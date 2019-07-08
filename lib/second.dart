import 'package:flutter/material.dart';

class SecondTab extends StatefulWidget {
  @override
  _SecondTabState createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  Color containerColor = Colors.green;
  double containerSize = 250;
  bool containerState = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 200,),
                GestureDetector(
                  child: Transform.rotate(
                    angle: 0,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 3000),
                      height: containerSize,
                      width: containerSize,
                      color: containerColor,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      if (containerState == true) {
                        containerColor = Colors.green;
                        containerSize = 50;
                        containerState = false;
                      } else {
                        containerColor = Colors.blue;
                        containerSize = 250;
                        containerState = true;
                      }
                    });
                  },
                )
              ],
            )
          ],
        ),
    );
  }
}
