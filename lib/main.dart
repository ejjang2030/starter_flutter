import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starter_flutter/ch5_routes_and_states/5_3_3_state_simple.dart';
import 'ch4_layout_and_widget/4_3_container_row_column_widget.dart';
import 'ch4_layout_and_widget/4_4_listview_widget.dart';
import 'ch4_layout_and_widget/4_5_materialapp_and_scaffold_widget.dart';
import 'ch5_routes_and_states/5_1_move_new_page.dart';
import 'ch5_routes_and_states/5_2_0_dynamic_routes.dart';
import 'ch5_routes_and_states/5_3_0_state_management.dart';
import 'ch5_routes_and_states/5_3_3_state_simple.dart';
import 'ch5_routes_and_states/5_3_1_page_login.dart';
import 'ch5_routes_and_states/5_3_2_page_main.dart';
import 'ch6_http_json_programming/6_1_async_http_call.dart';
import 'ch6_http_json_programming/6_3_public_api_sync.dart';

void main() => runApp(SubwayDemo());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful 위젯 데모',
      home: Scaffold(
        appBar: AppBar(title: Text('Stateful 위젯 데모')),
        body: _MyStatefulWidget(),
      ),
    );
  }
}

class _MyStatefulWidget extends StatefulWidget {
  @override
  State createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<_MyStatefulWidget> {
  late String _buttonState;

  @override
  void initState() {
    super.initState();
    print("initState(): 기본값을 설정합니다.");
    _buttonState = "OFF";
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies() 호출됨");
  }

  @override
  Widget build(BuildContext context) {
    print("build() 호출됨");
    return Column(
      children: <Widget>[
        ElevatedButton(
          child: Text("버튼을 누르세요"),
          onPressed: _onClick,
        ),
        Row(
          children: <Widget>[
            Text('버튼 상태: '),
            Text(_buttonState),
          ],
        )
      ],
    );
  }

  void _onClick() {
    print('_onClick() 호출됨');
    setState(() {
      print('setState() 호출됨');
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
      } else {
        _buttonState = "OFF";
      }
    });
  }

  @override
  void didUpdateWidget(_MyStatefulWidget oldWidget) {
    print("didUpdateWidget()");
  }
}

class TestClass {
  int num1 = 10;
  double num2 = 3.2;
  num num3 = 100;
  num num4 = 3.2;

  late double sum1 = num1 + num2;
  // late int sum2 = num1 + num2;

}
