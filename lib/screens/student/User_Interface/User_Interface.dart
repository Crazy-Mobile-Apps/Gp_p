import 'package:flutter/material.dart';
import 'package:graduation_project/screens/student/User_Interface/home.dart';
import 'package:graduation_project/screens/student/student.dart';

class User_Interface extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return User_Interface_st();
  }
}

class User_Interface_st extends State<User_Interface> {
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
              labelText: "ادخل الاسم رباعي",
              // contentPadding: EdgeInsets.only(left: 220),
            ),
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

//hintText:
                //  contentPadding: EdgeInsets.only(left: 220),
                labelStyle: TextStyle(),
                label: Text(
                  "ادخل الرقم الجامعي",
                  //textAlign: TextAlign.left,
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
                  Navigator.pushNamed(context, Student.pageRoute);
                },
                child: Text("انشاء حساب"),
                style: ElevatedButton.styleFrom(primary: Colors.green),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeStudent.pageRoute);
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
