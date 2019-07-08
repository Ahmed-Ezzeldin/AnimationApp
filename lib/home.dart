import 'package:flutter/material.dart';
import './first.dart';
import './second.dart';
import './third.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Animation App'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.rotate_right),
                child: Text('Rotate Animation'),
              ),
              Tab(
                icon: Icon(Icons.all_out),
                child: Text('Scale Animation'),
              ),
              Tab(
                icon: Icon(Icons.airport_shuttle),
                child: Text('Move Animation'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            FirstTab(),
            SecondTab(),
            ThirdTab(),
          ],
        ),
      ),
    );
  }
}
