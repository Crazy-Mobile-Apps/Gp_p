import 'package:flutter/material.dart';

class sc extends StatefulWidget {
  @override
  State<sc> createState() => _scState();
  static const String pageRoute = '/sc';
}

class _scState extends State<sc> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("الجداول "),
            backgroundColor: Color.fromARGB(255, 98, 211, 102),
            bottom: TabBar(tabs: [
              Tab(
                child: Text(
                  "نتائج الملاحق ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "نتائج الامتحانات",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ]),
          ),
          body: TabBarView(children: [
            Container(
              height: 100,
              child: Image.asset("assets/images/tp1.jpg"),
            ),
            Container(
              height: 100,
              child: Image.asset(
                "assets/images/tp1.jpg",
              ),
            ),
          ]),
        ));
  }
}
