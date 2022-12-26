import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '5_3_3_state_simple.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<SimpleState>(builder: (context, state, child) {
          return Text('로그인 완료: ${state.email}');
        }),
      ),
    );
  }
}
