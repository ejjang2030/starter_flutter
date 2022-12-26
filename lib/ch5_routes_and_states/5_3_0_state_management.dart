import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '5_3_1_page_login.dart';
import '5_3_2_page_main.dart';
import '5_3_3_state_simple.dart';

const String ROOT_PAGE = "/";
const String MAIN_PAGE = "/main";

class StateLoginDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '로그인 폼',
      debugShowCheckedModeBanner: false,
      initialRoute: ROOT_PAGE,
      routes: {
        ROOT_PAGE: (context) => LoginPage(),
        MAIN_PAGE: (context) => MainPage(),
      },
    );
  }
}
