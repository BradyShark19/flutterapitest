import 'package:flutter/material.dart';

import 'package:apitest/widgets/circle.dart';
import 'package:apitest/widgets/icon_container.dart';
import 'package:apitest/widgets/login_form.dart';

import 'package:apitest/utils/responsive.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'login';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double pinkSize = responsive.Wp(80);
    final double orangeSize = responsive.Wp(57);

    return Scaffold(
      body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: responsive.height,
              color: Colors.white,
              child: Stack(alignment: Alignment.center, children: <Widget>[
                Positioned(
                  top: -(pinkSize) * 0.35,
                  right: -(pinkSize) * 0.2,
                  child: Circle(
                    size: pinkSize,
                    colors: [
                      Colors.blue,
                      Colors.blueAccent,
                    ],
                  ),
                ),
                Positioned(
                  top: -(orangeSize) * 0.55,
                  left: -(orangeSize) * 0.15,
                  child: Circle(
                    size: orangeSize,
                    colors: [
                      Colors.black,
                      Colors.grey,
                    ],
                  ),
                ),
                Positioned(
                    top: pinkSize * 0.35,
                    child: Column(children: <Widget>[
                      IconContainer(size: responsive.Wp(17)),
                      SizedBox(height: 30.0),
                      Text(
                        'Hello Again\nWelcome Back',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: responsive.Dp(3)),
                      ),
                    ])),
                LoginForm(),
              ]),
            ),
          )),
    );
  }
}
