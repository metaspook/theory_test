import 'package:flutter/material.dart';
import 'package:theory_test/pages/home_page.dart';

class Method {
  static void goBack(BuildContext context) {
    if (Navigator.canPop(context)) Navigator.pop(context);
  }

  static void goHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }
}
