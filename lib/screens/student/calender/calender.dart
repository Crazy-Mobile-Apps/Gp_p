import 'package:flutter/material.dart';

class calender extends StatefulWidget {
  calender({Key? key}) : super(key: key);
  static const String pageRoute = '/cal';

  @override
  State<calender> createState() => _calenderState();
}

class _calenderState extends State<calender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(
          "التقويم",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: 400,
        width: 400,
        child: Image.asset("assets/images/tp1.jpg"),
      ),
    );
  }
}
