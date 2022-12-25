import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';

class ListViewStaticDemo extends StatelessWidget {
  static const String _title = "정적 ListView 위젯 데모";
  static const List<String> _data = [
    'Mercury',
    'Venus',
    'Earth',
    'Mars',
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune',
    'Pluto',
  ];

  Widget _buildStaticListView() {
    return ListView.builder(
      itemCount: _data.length,
      itemBuilder: (BuildContext _context, int i) {
        return ListTile(
          title: Text(
            _data[i],
            style: TextStyle(
              fontSize: 23,
            ),
          ),
          trailing: Icon(
            Icons.favorite_border,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: _buildStaticListView(),
      ),
    );
  }
}

class ListViewDynamicApp extends StatelessWidget {
  static const String _title = "동적 ListView 위젯 데모";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: ContactListPage(),
      ),
    );
  }
}

class ContactListPage extends StatefulWidget {
  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  late Iterable<Contact> _contacts = [];

  @override
  void initState() {
    super.initState();
    _checkPermission();
  }

  _checkPermission() async {
    if (await Permission.contacts.request().isGranted) {
      _refreshContacts();
    }
  }

  _refreshContacts() async {
    Iterable<Contact> contacts =
        await ContactsService.getContacts(withThumbnails: false);
    setState(() {
      _contacts = contacts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _contacts != null
        ? ListView.builder(itemCount: _contacts.length, itemBuilder: _buildRow)
        : Center(child: CircularProgressIndicator());
  }

  Widget _buildRow(BuildContext context, int i) {
    Contact c = _contacts.elementAt(i);
    return ListTile(
      leading: (c.avatar != null && c.avatar!.isNotEmpty)
          ? CircleAvatar(backgroundImage: MemoryImage(c.avatar!))
          : CircleAvatar(child: Text(c.initials())),
      title: Text(c.displayName ?? ""),
    );
  }
}
