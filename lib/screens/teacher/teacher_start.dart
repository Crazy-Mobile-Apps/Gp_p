import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graduation_project/screens/teacher/teacher.dart';

class TeacherStart extends StatefulWidget {
  const TeacherStart({Key? key}) : super(key: key);

  @override
  State<TeacherStart> createState() => _TeacherStartState();
}

class _TeacherStartState extends State<TeacherStart> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 1),
      () => Navigator.pushNamed(context, Teacher.pageRoute),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          Container(
            width: double.infinity,
            // height: 100.0,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const Text(
              'مرحباً بك في فئة المعلم! ... يوفر لك هذا التطبيق إمكانية رفع جميع محاضراتك بكل صيغها المتاحة ورفع إشعارات تهم الطالب',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 150.0),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child:
                  //  IconButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, AppContent.pageRoute);
                  //   },
                  //   icon: const Icon(Icons.arrow_back,
                  //       color: Colors.greenAccent, size: 40.0),
                  // ),

                  CircularProgressIndicator(
                strokeWidth: 3,
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
