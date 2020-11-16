import 'package:apitest/utils/responsive.dart';
import 'package:flutter/material.dart';

import 'input_text.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _formKey = GlobalKey();
  String _email = '', _password = '';

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
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black12))),
                child: Row(children: <Widget>[
                  Expanded(
                    child: InputText(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      label: "Password",
                      borderEnabled: false,
                      fontSize: responsive.Dp(responsive.isTablet ? 1.2 : 1.4),
                      onChanged: (text) {
                        _password = text;
                      },
                      validator: (text) {
                        if (text.trim().length == 0) {
                          return "Clave Invalida";
                        }
                        return null;
                      },
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                          fontSize: responsive.Dp(1.5),
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  )
                ]),
              ),
              SizedBox(height: responsive.Dp(5)),
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
                    onPressed: () {},
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
