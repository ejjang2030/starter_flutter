import 'dart:io';

import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  static const String _title = "Container 위젯 대모";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text('단순 컨테이너'),
              padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
            ),
            Container(
              color: Colors.green,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
              child: Container(
                color: Colors.yellow,
                child: Text('중첩 컨테이너'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RowColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(20, 120, 20, 120),
          child: Column(
            children: <Widget>[
              Hero(
                tag: 'heoro',
                child: CircleAvatar(
                  child: Image.asset('logo.png'),
                  backgroundColor: Colors.transparent,
                  radius: 58.0,
                ),
              ),
              SizedBox(height: 45.0),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                initialValue: 'your_name@gmail.com',
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(height: 15.0),
              TextFormField(
                initialValue: 'input password',
                obscureText: true,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    child: Text('Log In'),
                    onPressed: () {},
                  ),
                  SizedBox(width: 10.0),
                  ElevatedButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      exit(0);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
