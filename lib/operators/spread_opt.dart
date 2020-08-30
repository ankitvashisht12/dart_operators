import 'package:flutter/material.dart';

class SpreadScreen extends StatelessWidget {
  final showLoginUI = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text('Fake email input'),
        Text('Fake password input'),
        if (showLoginUI) ...[
          RaisedButton(
            child: Text('Login'),
            onPressed: () {},
          ),
          FlatButton(
            child: Text('Forgotten Password?'),
            onPressed: () {},
          ),
        ],
        if (!showLoginUI)
          RaisedButton(
            child: Text('Register'),
            onPressed: () {},
          ),
      ],
    );
  }
}
