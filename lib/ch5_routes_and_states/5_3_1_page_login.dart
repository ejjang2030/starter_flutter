import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dart:io';

import '5_3_0_state_management.dart';
import '5_3_3_state_simple.dart';

class LoginPage extends StatefulWidget {
  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController =
      TextEditingController(text: 'your_name@gmail.com');
  final TextEditingController _passwordController =
      TextEditingController(text: 'input password');

  void _onLogin(BuildContext context) {
    final String email = _emailController.text;
    final SimpleState state = Provider.of<SimpleState>(context, listen: false);
    state.setEmail(email);

    Navigator.pushNamed(context, MAIN_PAGE);
  }

  void _onCancel() => exit(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 120, 20, 120),
        child: Column(
          children: <Widget>[
            Hero(
              tag: 'heoro',
              child: CircleAvatar(
                child: Image.asset("assets/image/logo.png"),
                backgroundColor: Colors.transparent,
                radius: 58.0,
              ),
            ),
            SizedBox(height: 45.0),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(border: OutlineInputBorder()),
              controller: _emailController,
            ),
            SizedBox(height: 15.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(border: OutlineInputBorder()),
              controller: _passwordController,
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Log In'),
                  onPressed: () => _onLogin(context),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  child: Text('Cancel'),
                  onPressed: _onCancel,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
