import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/screens/student/User_Interface/home.dart';
import 'package:graduation_project/screens/student/colors/colors.dart';

class Student extends StatefulWidget {
  const Student({Key? key}) : super(key: key);
  static const String pageRoute = '/student';

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  /////////////////////////////////////////////////
  final List<String> _levels = [
    'الأولى',
    'الثانية',
    'الثالثة',
    'الرابعة',
    'الخامسة',
  ];
  String? levelDefault;
  final _nameController = TextEditingController();
  final _yearController = TextEditingController();
  final _idController = TextEditingController();
  bool errorName = false;
  bool errorId = false;
  bool errorYear = false;
  //////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: collageAppBar('إنشاء حساب', context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          Container(
            width: double.infinity,
            height: 100.0,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.symmetric(vertical: 30.0),
            decoration: BoxDecoration(
              color: Prim_color,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const Text(
              '.....الرجاء إدخال بياناتك لإنشاء حسابك الخاص في تطبيق كليتي',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          // buildfield(_nameController, TextInputType.name, '  ادخل اسمك رباعي',
          // 'اﻹســم',),
          buildfield(
            _nameController,
            TextInputType.name,
            '  ادخل اسمك رباعي',
            'اﻹســم',
            errorName,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 12.0),
            padding: const EdgeInsets.symmetric(horizontal: 1.0),

            decoration: BoxDecoration(
              border: Border.all(width: 0.8),
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: ListTile(
              leading: Text(
                levelDefault != null ? 'الفرقــة $levelDefault' : 'الفرقــة',
                textDirection: TextDirection.rtl,
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
              trailing: buildLevelMethod(),
            ),

            // child: buildLevelMethod(),
          ),
          buildfield(_idController, TextInputType.number, 'ادخل رقمك الجامعي',
              'الرقـم الجـامعي', errorId),
          buildfield(_yearController, TextInputType.number,
              'ادخل العام الدراســي', 'ادخل العام الدراســي', errorYear),

          Container(
            height: 100.0,
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            decoration: BoxDecoration(
              color: Prim_color,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, HomeStudent.pageRoute);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 100.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1.0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'تـم',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      _nameController.clear();
                      levelDefault = null;
                      _idController.clear();
                      _yearController.clear();
                    });
                  },
                  splashColor: Colors.indigo,
                  child: Container(
                    alignment: Alignment.center,
                    width: 100.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1.0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'أعـد',
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildfield(
    TextEditingController controller,
    TextInputType keyboardType,
    String hintText,
    String label,
    bool errorText,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        /////////////////////////////////////////////////////
        onChanged: (value) => setState(() {
          int.tryParse(controller.text) == null
              ? errorText = true
              : errorText = false;
        }),

        // onChanged: (value) => int.tryParse(controller.text),

        ////// ///////////////////////////////////////////////
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(12.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          errorText: errorText ? 'رجاءاً ادخل عدد صحيح' : null,
          label: Text(
            label,
            style: const TextStyle(fontSize: 16.0, color: Colors.black87),
          ),
          //////////////////////////////////////
        ),
      ),
    );
  }

  Widget buildLevelMethod() {
    return PopupMenuButton(
      itemBuilder: (context) => _levels
          .map(
            (e) => PopupMenuItem(
              child: Text(
                'الفرقـة $e',
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
        size: 35.0,
        color: Colors.black,
      ),
    );
  }
}
