import 'package:flutter/material.dart';
import 'package:theory_test/pages/about_theory.dart';
import 'package:theory_test/pages/extra_page.dart';
import 'package:theory_test/pages/home_page.dart';
import 'package:theory_test/pages/study_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          colorScheme: ColorScheme.light(
        primary: Colors.blue,
        secondary: Theme.of(context).scaffoldBackgroundColor,
      )),
      home: const StudyPage(),
      // home: const ExtraPage(),
      // home: const AboutTheory(),
      // home: const HomePage(),
    );
  }
}
