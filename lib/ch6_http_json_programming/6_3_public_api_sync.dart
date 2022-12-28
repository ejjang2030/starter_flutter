import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SubwayDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '지하철 실시간 정보',
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  // http://swopenapi.seoul.go.kr/api/subway/7a685a574b74686935384555706a50/json/realtimeStationArrival/1/5/
  static const String _urlPrefix = 'http://swopenapi.seoul.go.kr/api/subway/';
  static const String _userKey = '7a685a574b74686935384555706a50';
  static const String _urlSuffix = '/json/realtimeStationArrival/1/5/';
  static const String _defaultStation = '광화문';

  String _response = '';

  String _buildUri(String station) {
    StringBuffer sb = StringBuffer();
    sb.write(_urlPrefix);
    sb.write(_userKey);
    sb.write(_urlSuffix);
    sb.write(station);
    return sb.toString();
  }

  _httpGet(String url) async {
    var response = await http.get(Uri.http(_buildUri(url)));
    String res = response.body;
    print('res >> $res');
    setState(() {
      _response = res;
    });
  }

  @override
  void initState() {
    super.initState();
    _httpGet(_buildUri(_defaultStation));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('지하철 실시간 정보'),
      ),
      body: Center(
        child: Text(_response),
      ),
    );
  }
}
