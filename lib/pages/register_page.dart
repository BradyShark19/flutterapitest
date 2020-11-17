import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:apitest/widgets/circle.dart';
import 'package:apitest/widgets/register_form.dart';

import 'package:apitest/utils/responsive.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = 'register';

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  top: -(pinkSize) * 0.3,
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
                  top: -(orangeSize) * 0.45,
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
                    top: pinkSize * 0.22,
                    child: Column(children: <Widget>[
                      Text(
                        'Hello\n Registrate para Comenzar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: responsive.Dp(3), color: Colors.white),
                      ),
                    ])),
                SizedBox(height: responsive.Dp(4.5)),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 28,
                              color: Colors.black12,
                              offset: Offset(0, 20),
                            )
                          ]),
                      child: ClipOval(
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjJBekKMdzDiywHq0HKWbcyCI6m7n31nkG3A&usqp=CAU',
                            height: responsive.Hp(25),
                            width: responsive.Wp(25)),
                      ),
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        child: Icon(Icons.add, color: Colors.white),
                        color: Colors.redAccent,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                RegisterForm(),
                Positioned(
                  left: 10,
                  top: 15,
                  child: SafeArea(
                    child: CupertinoButton(
                      padding: EdgeInsets.all(10),
                      borderRadius: BorderRadius.circular(30),
                      child: Icon(Icons.arrow_back),
                      color: Colors.black26,
                      onPressed: () {},
                    ),
                  ),
                ),
              ]),
            ),
          )),
    );
  }
}
