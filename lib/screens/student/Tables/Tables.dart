import 'package:flutter/material.dart';

class Tables extends StatefulWidget {
  Tables({Key? key}) : super(key: key);
  static const String pageRoute = '/Tp';
  @override
  State<Tables> createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("الجداول "),
            backgroundColor: const Color.fromARGB(255, 98, 211, 102),
            bottom: const TabBar(tabs: [
              Tab(
                child: Text(
                  "الجدول الدراسي",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "جدول الملاحق",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "جدول الامتحانات",
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
            Container(
              height: 100,
              child: Image.asset("assets/images/tp1.jpg"),
            )
          ]),
        ));
  }
}
