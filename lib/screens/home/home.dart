import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graduation_project/app_content.dart';
import 'package:graduation_project/screens/student/colors/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const String pageRoute = '/';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushNamed(context, AppContent.pageRoute),
    );
    super.initState();
  }

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              // Theme.of(context).primaryColorDark,
              // Colors.black.withOpacity(.5),
              // Theme.of(context).primaryColor.withOpacity(.9),
              Prim_color,
              Color.fromARGB(255, 89, 218, 93).withOpacity(0.5),
              Theme.of(context).primaryColor.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(30.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    // Theme.of(context).primaryColorDark,
                    // Colors.black.withOpacity(.5),
                    // Theme.of(context).primaryColor.withOpacity(.9),
                    Color.fromARGB(234, 10, 24, 102).withOpacity(0.9),
                    Color.fromARGB(234, 41, 65, 202).withOpacity(0.5),
                    Color.fromARGB(234, 67, 93, 236).withOpacity(0.5),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                border: Border.all(width: 3.0),
                shape: BoxShape.circle,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/logo.jpg",
                    ),
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
