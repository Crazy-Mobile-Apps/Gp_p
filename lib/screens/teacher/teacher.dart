import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/screens/student/colors/colors.dart';
import 'package:graduation_project/screens/teacher/teacher_service.dart';

class Teacher extends StatefulWidget {
  const Teacher({Key? key}) : super(key: key);
  static const String pageRoute = '/teacher';

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  /////////////////////////////////////////////////
  final List<String> _levels = [
    'النظم الذكية',
    'التحليل والتصميم',
    'اساليب البرمجة',
    'امن المعلومات والشبكات',
    'النظم الجغرافية',
  ];
  String? levelDefault;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();
  bool errorName = false;
  bool errorId = false;
  bool errorEmail = false;
  bool errorPassword = false;
  bool showPassword = true;
  //////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: collageAppBar('إنشاء حساب', context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          const SizedBox(height: 70.0),
          buildfield(_nameController, TextInputType.name, '  ادخل اسمك رباعي',
              'اﻹســم', errorName),
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
                levelDefault != null ? 'المـادة: $levelDefault' : 'المـادة:',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    fontSize: 16,
                    color:
                        levelDefault == null ? Colors.black87 : Colors.indigo),
              ),
              trailing: buildLevelMethod(),
            ),

            // child: buildLevelMethod(),
          ),
          buildfield(_idController, TextInputType.number, 'ادخل رقمك التسلسلي',
              'الرقـم التسلسلي', errorId),
          buildfield(_emailController, TextInputType.emailAddress,
              'ادخل بريدك اﻹلكتروني...', 'البريد اﻹلكـتروني', errorEmail),
          Container(
            margin: const EdgeInsets.only(bottom: 50.0),
            child: TextFormField(
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                filled: true,
                fillColor: Colors.white,
                hintText: 'ادخل كلمة مرور قوية لا تقل عن 8 خانات',
                errorText: errorPassword
                    ? 'يجب ان ﻻ تقل كلمة المرور عن 8 خانات'
                    : null,
                label: const Text(
                  'كلمــة المــرور',
                  style: TextStyle(fontSize: 18.0, color: Colors.black87),
                ),
                contentPadding: const EdgeInsets.all(12.0),
                suffixIcon: const Icon(Icons.security),
                prefixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  icon: showPassword
                      ? const Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.blueGrey,
                        )
                      : const Icon(
                          Icons.visibility_outlined,
                          color: Colors.blueGrey,
                        ),
                ),
              ),
              onChanged: (value) => setState(() {
                _passwordController.text.length < 8
                    ? errorPassword = true
                    : errorPassword = false;
              }),
              controller: _passwordController,
              obscureText: showPassword,
            ),
          ),
          Container(
            height: 80.0,
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
                    Navigator.pushNamed(context, TeacherService.pageRoute);
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
                      _emailController.clear();
                      _passwordController.clear();
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
        size: 35.0,
        color: Colors.black,
      ),
    );
  }
}
