import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import "5_2_1_page_contact_list.dart";
import '5_2_2_page_contact_detail.dart';

class ContactsDemoV3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactListPage(),
      onGenerateRoute: (RouteSettings settings) {
        if (ContactDetailPage.routeName == settings.name) {
          Contact c = settings.arguments as Contact;
          return MaterialPageRoute(builder: (context) => ContactDetailPage(c));
        }
        return _noWay;
      },
    );
  }

  final MaterialPageRoute _noWay = MaterialPageRoute(
    builder: (_) => Scaffold(
      body: Center(
        child: Text('경로가 없습니다.'),
      ),
    ),
  );
}
