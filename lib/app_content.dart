import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/constants.dart';
import 'package:graduation_project/screens/mangement/Ui_mangement.dart';

import 'package:graduation_project/screens/mangement/mange.dart';
import 'package:graduation_project/screens/student/User_Interface/User_Interface.dart';
import 'package:graduation_project/screens/student/colors/colors.dart';
import 'package:graduation_project/screens/teacher/teacher_U_I.dart';
import 'package:graduation_project/screens/teacher/teacher_start.dart';

class AppContent extends StatefulWidget {
  const AppContent({Key? key}) : super(key: key);
  static const String pageRoute = '/app_content';

  @override
  State<AppContent> createState() => _AppContentState();
}

class _AppContentState extends State<AppContent> {
  // varibale to control pages
  PageController pageController = PageController();
  int pageIndex = 0;
  String appBarText = 'الطالــب';
  List appBarTexts = ['الطالــب', 'المعلـم', 'اﻹدارة'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: collageAppBar(appBarText, context),
      body: PageView(
        children: <Widget>[
          User_Interface(),
          TeacherUi(),
          UiMangement(),
        ],
        controller: pageController,
        onPageChanged: onpageChanged,
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        activeColor: Prim_color,
        currentIndex: pageIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.school)),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin)),
          BottomNavigationBarItem(icon: Icon(Icons.manage_accounts_outlined)),
        ],
      ),
    );
  }

  void onpageChanged(int value) {
    setState(() {
      pageIndex = value;
      appBarText = appBarTexts[value];
    });
  }

  onTap(int pageIndex) {
    pageController.jumpToPage(pageIndex);
  }
}
