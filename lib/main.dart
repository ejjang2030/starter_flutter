// import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  String url = 'https://jsonplaceholder.typicode.com/todos/1';
  var response = await http.get(url);

  Map<String, dynamic> data = jsonDecode(response.body);
  print('userId : ${data['userId']}');
  print('id : ${data['id']}');
  print('title : ${data['title']}');
  print('complete : ${data['completed']}');
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Stateful 위젯 데모',
//       home: Scaffold(
//         appBar: AppBar(title: Text('Stateful 위젯 데모')),
//         body: _MyStatefulWidget(),
//       ),
//     );
//   }
// }

// class _MyStatefulWidget extends StatefulWidget {
//   @override
//   State createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<_MyStatefulWidget> {
//   late String _buttonState;

//   @override
//   void initState() {
//     super.initState();
//     print("initState(): 기본값을 설정합니다.");
//     _buttonState = "OFF";
//   }

//   @override
//   void didChangeDependencies() {
//     print("didChangeDependencies() 호출됨");
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("build() 호출됨");
//     return Column(
//       children: <Widget>[
//         ElevatedButton(
//           child: Text("버튼을 누르세요"),
//           onPressed: _onClick,
//         ),
//         Row(
//           children: <Widget>[
//             Text('버튼 상태: '),
//             Text(_buttonState),
//           ],
//         )
//       ],
//     );
//   }

//   void _onClick() {
//     print('_onClick() 호출됨');
//     setState(() {
//       print('setState() 호출됨');
//       if (_buttonState == 'OFF') {
//         _buttonState = 'ON';
//       } else {
//         _buttonState = "OFF";
//       }
//     });
//   }

//   @override
//   void didUpdateWidget(_MyStatefulWidget oldWidget) {
//     print("didUpdateWidget()");
//   }
// }

// class TestClass {
//   int num1 = 10;
//   double num2 = 3.2;
//   num num3 = 100;
//   num num4 = 3.2;

//   late double sum1 = num1 + num2;
//   // late int sum2 = num1 + num2;

// }
