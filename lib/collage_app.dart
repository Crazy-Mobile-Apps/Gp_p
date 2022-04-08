import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graduation_project/app_content.dart';
import 'package:graduation_project/screens/home/home.dart';
import 'package:graduation_project/screens/mangement/mange.dart';
import 'package:graduation_project/screens/student/Sc/sc.dart';
import 'package:graduation_project/screens/student/Tables/Tables.dart';
import 'package:graduation_project/screens/student/User_Interface/home.dart';
import 'package:graduation_project/screens/student/User_Interface/home2.dart';
import 'package:graduation_project/screens/student/calender/calender.dart';
import 'package:graduation_project/screens/student/colors/colors.dart';
import 'package:graduation_project/screens/student/noti/noti.dart';
import 'package:graduation_project/screens/student/student.dart';
import 'package:graduation_project/screens/teacher/teacher.dart';
import 'package:graduation_project/screens/teacher/teacher_service.dart';

class CollageApp extends StatelessWidget {
  const CollageApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Graduation Project',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: localizationsDelegates(),
      supportedLocales: const [Locale('ar', 'AE')],
      locale: const Locale('ar', 'AE'),
      theme: ThemeData(
        colorScheme:
            Theme.of(context).colorScheme.copyWith(primary: Prim_color),
      ),
      routes: <String, WidgetBuilder>{
        Home.pageRoute: (context) => const Home(),
        Student.pageRoute: (context) => const Student(),
        Teacher.pageRoute: (context) => const Teacher(),
        Mange.pageRoute: (context) => const Mange(),
        AppContent.pageRoute: (context) => const AppContent(),
        TeacherService.pageRoute: (context) => const TeacherService(),
        Tables.pageRoute: (context) => Tables(),
        calender.pageRoute: (context) => calender(),
        notf.pageRoute: (context) => notf(),
        sc.pageRoute: (context) => sc(),
        HomeStudent.pageRoute: (context) => HomeStudent(),
        HomeStudent2.pageRoute: (context) =>
            HomeStudent2(size: MediaQuery.of(context).size),
      },
      initialRoute: Home.pageRoute,
    );
  }

  // for localztionDelegates to define Arabic font
  List<LocalizationsDelegate<dynamic>> localizationsDelegates() {
    return [
      // delegate from flutter_localization
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }
}
