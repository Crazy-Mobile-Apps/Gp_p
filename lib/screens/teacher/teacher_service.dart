import 'package:flutter/material.dart';
import 'package:graduation_project/screens/student/colors/colors.dart';

class TeacherService extends StatefulWidget {
  const TeacherService({Key? key}) : super(key: key);
  static const pageRoute = '/teacher_service';
  @override
  State<TeacherService> createState() => _TeacherServiceState();
}

class _TeacherServiceState extends State<TeacherService> {
  final List<String> _levels = [
    'one',
    'two',
    'three',
    'four',
  ];
  String? levelDefault;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('خدمـة المعلم'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom:
                Radius.elliptical(MediaQuery.of(context).size.height, 100.0),
          ),
        ),
        toolbarHeight: 100.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        // physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(
            width: double.infinity,
            // height: 100.0,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const Text(
              'مرحبا:  د/ الصادق',
              style: TextStyle(
                  fontSize: 25,
                  // color: Color.fromARGB(255, 10, 207, 233),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Table(
            border: TableBorder.all(
                width: 2.0,
                borderRadius: BorderRadius.circular(10),
                color: Colors.black),
            children: [
              TableRow(
                children: <Widget>[
                  Container(
                    color: Prim_color,
                    child: const Text(
                      'المواد',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    color: Prim_color,
                    child: const Text(
                      'الفرقـة',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const TableRow(
                children: <Widget>[
                  Text(
                    'برمجـة',
                    style: TextStyle(fontSize: 18.0),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'الخامسـة',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const TableRow(
                children: <Widget>[
                  Text(
                    'النظم الذكية',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'الرابعـة',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              'كل ما تحتاجه للطالب:',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
          ),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 17 / 15,
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            children: <Widget>[
              buildFeatures(title: 'معرفة الجدول الدراسي', order: 'الفرقـة'),
              buildFeatures(title: 'معرفة جدول الطلاب', order: 'الفرقـة'),
              buildFeatures(title: 'رفع مستندات', order: 'الفرقـة'),
              buildFeatures(title: 'رفع إشعارات', order: 'الفرقـة')
            ],
          ),
          Container(
            padding: const EdgeInsets.all(2.0),
            margin: const EdgeInsets.all(18.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Prim_color,
                border: Border.all(width: 2)),
            child: const Text(
              'للتواصـل مع اﻹدارة',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFeatures({
    required String title,
    required String order,
  }) {
    return Container(
      color: const Color(0xffe0f7fa), //Color(0xffF5F6F9),
      child: Column(
        children: [
          // Container(),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          // const SizedBox(height: 8.0),
          ListTile(
            leading: Text(
              levelDefault != null ? 'الطلـب: $levelDefault' : 'اختر $order:',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
            trailing: buildLevelMethod(),
          ),
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                'تـم',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }

  Widget buildLevelMethod() {
    return PopupMenuButton(
      itemBuilder: (context) => _levels
          .map(
            (e) => PopupMenuItem(
              child: Text(
                'مادة $e',
                style: const TextStyle(fontSize: 18.0),
              ),
              value: e,
            ),
          )
          .toList(),
      initialValue: levelDefault,
      onSelected: (value) => setState(
        () {
          levelDefault = value.toString();
        },
      ),
      icon: const Icon(
        Icons.arrow_drop_down,
        size: 20.0,
        color: Colors.black,
      ),
    );
  }
}
