import 'package:flutter/material.dart';

class notf extends StatefulWidget {
  notf({Key? key}) : super(key: key);
  static const String pageRoute = '/not';
  @override
  State<notf> createState() => _notfState();
}

class _notfState extends State<notf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("الاشعارات"),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text(
                "جامعة امدرمن الاسلامية", textAlign: TextAlign.right,
                // style: TextStyle(color: Colors.blue),
              ),
              trailing: Icon(Icons.notification_add),
              subtitle: Text(
                "تأجيل الجامعة الى اجل غير مسمى",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "جامعة امدرمن الاسلامية", textAlign: TextAlign.right,
                // style: TextStyle(color: Colors.blue),
              ),
              trailing: Icon(Icons.notification_add),
              subtitle: Text(
                "تأجيل الجامعة الى اجل غير مسمى",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
