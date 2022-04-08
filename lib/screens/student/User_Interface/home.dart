import 'package:flutter/material.dart';
import 'package:graduation_project/screens/student/Sc/sc.dart';
import 'package:graduation_project/screens/student/Tables/Tables.dart';
import 'package:graduation_project/screens/student/User_Interface/home2.dart';
import 'package:graduation_project/screens/student/calender/calender.dart';
import 'package:graduation_project/screens/student/colors/colors.dart';
import 'package:graduation_project/screens/student/noti/noti.dart';

class HomeStudent extends StatefulWidget {
  static const String pageRoute = '/home_student';
  @override
  State<HomeStudent> createState() => _homeState();
}

class _homeState extends State<HomeStudent> {
  @override
  Widget build(BuildContext context) {
    //تعطي حجم شاشة الجهاز
    Size size = MediaQuery.of(context).size;
    List IconL = [
      Icon(Icons.table_view_outlined, color: Colors.white, size: 30),
      Icon(
        Icons.pending_actions,
        color: Colors.white,
        size: 30,
      ),
      Icon(Icons.stacked_bar_chart, color: Colors.white, size: 30),
      Icon(Icons.stairs_outlined, color: Colors.white, size: 30),
      Icon(Icons.scatter_plot_outlined, color: Colors.white, size: 30),
      Icon(Icons.accessibility_new_outlined, color: Colors.white, size: 30),
    ];
    List Names = [
      "الجداول الدراسية",
      "التقويم",
      "الاشعارات",
      "النتائج الدراسية",
      "الانشطة الطلابية",
      "الشكاوي",
    ];
    return Scaffold(
        appBar: AppBar(
          // actions: [
          //   IconButton(
          //       onPressed: () {
          //         // exit(0);
          //       },
          //       icon: Icon(
          //         Icons.logout,
          //         size: 25,
          //       ))
          // ],
          backgroundColor: Prim_color,
          elevation: 0,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        color: Colors.grey,
                      )),
                ),
                accountName: Text("Mohammed"),
                accountEmail: Text("Mohammed@gmail.com"),
                decoration: BoxDecoration(color: Colors.green),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "الموقع الرئيسي للجامعة",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.wb_shade),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "عن التطبيق",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.book),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text(
                    "المساعدة",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Icon(Icons.help),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          // scrollDirection: Axis.vertical,
          // shrinkWrap: true,
          children: <Widget>[
            HomeStudent2(size: size),
            const SizedBox(
              height: 25,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // crossAxisSpacing: 1.5,
                  // mainAxisSpacing: 1.5,
                  childAspectRatio: 15 / 21),
              itemCount: Names.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Navigator.of(context).pushNamed(Tables.pageRoute);

                        break;
                      case 1:
                        Navigator.of(context).pushNamed(calender.pageRoute);

                        break;
                      case 2:
                        Navigator.of(context).pushNamed(notf.pageRoute);

                        break;
                      case 3:
                        Navigator.of(context).pushNamed(sc.pageRoute);

                        break;
                      default:
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: ListView(
                        padding: EdgeInsets.all(10),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(90)),
                              color: Colors.green,
                              child: Padding(
                                padding: EdgeInsets.all(13),
                                child: IconL[index],
                              )),
                          SizedBox(
                            height: 14,
                          ),
                          Text(
                            "${Names[index]}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ));
  }
}
