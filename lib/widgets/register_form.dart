import 'package:apitest/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'package:apitest/pages/register_page.dart';

import 'input_text.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  GlobalKey<FormState> _formKey = GlobalKey();
  String _email = '', _password = '', _username = '';

  _submit() {
    final isOk = _formKey.currentState.validate();
    print("form isOk $isOk");
    if (isOk) {}
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    return Positioned(
      bottom: 30,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: responsive.isTablet ? 430 : 360,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              InputText(
                keyboardType: TextInputType.emailAddress,
                label: "UserName",
                fontSize: responsive.Dp(responsive.isTablet ? 1.2 : 1.4),
                onChanged: (text) {
                  _username = text;
                },
                validator: (text) {
                  if (text.trim().length < 5) {
                    return "UserName Invalido";
                  }
                  return null;
                },
              ),
              SizedBox(height: responsive.Dp(2)),
              InputText(
                keyboardType: TextInputType.emailAddress,
                label: "Email Address",
                fontSize: responsive.Dp(responsive.isTablet ? 1.2 : 1.4),
                onChanged: (text) {
                  _email = text;
                },
                validator: (text) {
                  if (!text.contains("@")) {
                    return "Email Invalido";
                  }
                  return null;
                },
              ),
              SizedBox(height: responsive.Dp(5)),
              InputText(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                label: "Password",
                borderEnabled: false,
                onChanged: (text) {
                  _password = text;
                },
                validator: (text) {
                  if (text.trim().length < 6) {
                    return "Contraseña Invalida";
                  }
                  return null;
                },
              ),
              SizedBox(
                  width: double.infinity,
                  child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white, fontSize: responsive.Dp(1.5)),
                    ),
                    onPressed: () {
                      this._submit();
                    },
                    color: Colors.pinkAccent,
                  )),
              SizedBox(height: responsive.Dp(5)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("New to Friendly Desi?",
                      style: TextStyle(fontSize: responsive.Dp(1.5))),
                  FlatButton(
                    child: Text("Sign up",
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: responsive.Dp(1.5))),
                    onPressed: () {
                      Navigator.pushNamed(context, 'register');
                    },
                  )
                ],
              ),
              SizedBox(height: responsive.Dp(10))
            ],
          ),
        ),
      ),
    );
  }
}
