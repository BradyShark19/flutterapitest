import 'package:flutter/material.dart';

import 'package:apitest/widgets/circle.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final double pinkSize = size.width * 0.8;
    final double orangeSize = size.width * 0.57;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(children: <Widget>[
          Positioned(
            top: -(pinkSize) * 0.4,
            right: -(pinkSize) * 0.2,
            child: Circle(
              size: pinkSize,
              colors: [
                Colors.pink,
                Colors.pinkAccent,
              ],
            ),
          ),
          Positioned(
            top: -(orangeSize) * 0.55,
            left: -(orangeSize) * 0.15,
            child: Circle(
              size: orangeSize,
              colors: [
                Colors.deepOrange,
                Colors.deepOrangeAccent,
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
