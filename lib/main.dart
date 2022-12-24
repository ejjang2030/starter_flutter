import 'package:flutter/material.dart';

void main() {
  runApp(ImageDemo());
}

class ImageDemo extends StatelessWidget {
  static const String _title = "Image 위젯 데모";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/london.jpg'),
            Image.asset('assets/autumn-leaves.jpg'),
          ],
        ),
      ),
    );
  }
}

class TestDemo extends StatelessWidget {
  static const String _title = "Text 위젯 데모";
  static const String _name = "Eunjae Jang";
  static const String _longText = """
플러터(Flutter)는 구글이 개발한 오픈소스 모바일 애플리케이션 개발 프레임워크이다.
안드로이드, iOS용 애플리케이션 개발을 위해,
또 구글 퓨시아용 애플리케이션 개발의 주된 방식으로 사용된다.(위키백과) 
""";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("단순 텍스트 표시"), // simple text
            Text(
              'Styled Text with $_name', // styled text
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0, // dp
                  background: Paint()
                    ..color = Color(0xFFDCEDC8)
                    ..style = PaintingStyle.fill,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              _longText,
              overflow: TextOverflow.ellipsis, // text overflow
            ),
          ],
        ),
      ),
    );
  }
}

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
