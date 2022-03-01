import 'package:flutter/material.dart';

void main() {
  runApp(SecondApp());
}

class SecondApp extends StatelessWidget {
  const SecondApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My ui"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 10,
              child: ListTile(
                leading: Icon(Icons.dehaze),
                title: Text('Search in mail'),
                trailing: Icon(Icons.account_circle),
              ),
            ),
            const TitleRow(),
            Mails(),
          ],
        ),
      ),
    );
  }
}

class TitleRow extends StatelessWidget {
  const TitleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      padding: const EdgeInsets.only(bottom: 8),
      child: const Text(
        'ALL INBOXES',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey,
          height: 2,
        ),
      ),
    );
  }
}

class Mails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Title'),
          ),
          ListTile(
            title: Text('Title'),
          ),
          ListTile(
            title: Text('Title'),
          ),
        ],
      ),
    );
  }
}
