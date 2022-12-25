import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text(
        '이것은 머터리얼 앱이 아닙니다.',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}

class MyMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '머터리얼 앱',
      home: Container(
        padding: EdgeInsets.all(20),
        child: Text('이제는 머티리얼 앱입니다.'),
      ),
    );
  }
}

class MaterialScaffoldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '머티리얼 앱',
      home: Scaffold(
        appBar: AppBar(title: Text('진짜 머티리얼 앱')),
        body: Text('이제야 제대로 된 머티리얼 앱입니다.'),
      ),
    );
  }
}

class SimpleThemeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SimpleThemeApp',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.purple,
        accentColor: Colors.cyan[600],
        fontFamily: 'Raleway',
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Simple Theme App')),
        body: Center(
          child: Text(
            "This is my custom fonts",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
