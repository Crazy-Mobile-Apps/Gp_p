import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/screens/student/colors/colors.dart';

class Mange extends StatefulWidget {
  const Mange({Key? key}) : super(key: key);
  static const String pageRoute = '/mange';

  @override
  State<Mange> createState() => _MangeState();
}

class _MangeState extends State<Mange> {
  /////////////////////////////////////////////////

  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _idController = TextEditingController();
  final _emailController = TextEditingController();
  bool errorName = false;
  bool errorId = false;
  bool errorPassword = false;
  bool errorEmail = false;
  bool showPassword = true;
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
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
              color: Prim_color,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: const Text(
              'مرحباً بك في فئة اﻹدارة يمكنك هذا التطبيق من إدارة جميع مواد الطالب والمعلم والتعديل واﻹضافة والحذف وكل ما تحتاجه للإدارة',
              style: TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          buildfield(_nameController, TextInputType.name, '  ادخل اسمك رباعي',
              'اﻹســم', errorName),
          buildfield(_idController, TextInputType.number, 'ادخل رقمك التسلسلي',
              'الرقـم التسلسلي', errorId),
          buildfield(_emailController, TextInputType.emailAddress,
              'ادخل بريدك اﻹلكتروني', 'البريد الإلكتروني', errorEmail),
          Container(
            margin: const EdgeInsets.only(bottom: 12.0),
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
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.visibility_outlined,
                          color: Colors.white,
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
                    setState(() {
                      _nameController.clear();

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
                      'تم',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 100.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1.0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'أعد',
                    style: TextStyle(
                        fontSize: 30.0,
                        // color: Colors.indigo,
                        fontWeight: FontWeight.bold),
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
}
