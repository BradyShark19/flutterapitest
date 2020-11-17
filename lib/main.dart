import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:apitest/pages/login_page.dart';
import 'package:apitest/pages/register_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        LoginPage.routeName: (_) => LoginPage(),
        RegisterPage.routeName: (_) => RegisterPage(),
      },
    );
  }
}
