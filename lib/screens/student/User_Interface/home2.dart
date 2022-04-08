import 'package:flutter/material.dart';
import 'package:graduation_project/screens/student/colors/colors.dart';

class HomeStudent2 extends StatelessWidget {
  static const String pageRoute = '/home_student2';
  const HomeStudent2({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // (من شاشة الجهاز) ارتفاع بنسبة %30
      height: size.height * 0.3,

      child: Stack(
        children: [
          Container(
            // (من شاشة الجهاز) ارتفاع بنسبة %30
            height: size.height * 0.3 - 40,
            decoration: BoxDecoration(
                color: Prim_color,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(36))),
            child: ListTile(
                title: Column(
              children: [
                Text(
                  "جامعة مدرمان الاسلامية",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Text_color),
                ),
                Text(
                  "كلية علوم الحاسوب وتقانة المعلومات",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Text_color),
                ),
              ],
            )),
          ),
          co()
        ],
      ),
    );
  }
}

class co extends StatelessWidget {
  const co({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          margin: EdgeInsets.only(right: 30, left: 45),
          padding: EdgeInsets.only(right: 20),
          height: 130,
          width: 120,
          decoration: BoxDecoration(
              color: Prim_color2,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Prim_color2.withOpacity(0.23))
              ],
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "  :الرقم الجامعي",
                // textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Text_color),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "  075234233",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Text_color),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "  :السنة الدراسية ",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Text_color),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "  4",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Text_color),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
