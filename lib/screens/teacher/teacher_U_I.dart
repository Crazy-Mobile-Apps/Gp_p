import 'package:flutter/material.dart';
import 'package:graduation_project/screens/student/User_Interface/home.dart';

import 'package:graduation_project/screens/student/student.dart';
import 'package:graduation_project/screens/teacher/teacher.dart';
import 'package:graduation_project/screens/teacher/teacher_service.dart';

class TeacherUi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return User_Interface_st();
  }
}

class User_Interface_st extends State<TeacherUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(children: [
          Image.asset(
            "assets/images/unversity.jpeg",
            height: 200,
            width: 200,
          ),
          SizedBox(
            height: 60,
          ),
          TextFormField(
            decoration: InputDecoration(

//hintText:"ادخل الاسم رباعي"
                //  contentPadding: EdgeInsets.only(left: 220),
                label: Text("ادخل الاسم رباعي")),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            enabled: true,
            autocorrect: true,
            textAlign: TextAlign.center,
            obscureText: true,
            decoration: InputDecoration(

//hintText:"ادخل الاسم رباعي"
                // contentPadding: EdgeInsets.only(left: 220),
                labelStyle: TextStyle(),
                label: Text(
                  "ادخل كلمة المرور ",
                  // textAlign: TextAlign.left,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Teacher.pageRoute);
                },
                child: Text("انشاء حساب"),
                style: ElevatedButton.styleFrom(primary: Colors.green),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, TeacherService.pageRoute);
                },
                child: Text("تسجيل الدخول"),
                style: ElevatedButton.styleFrom(primary: Colors.green),
              )
            ],
          )
        ]),
      ),
    );
  }
}
