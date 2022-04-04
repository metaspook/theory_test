import 'package:flutter/material.dart';

class Methods {
  Methods._();
  static void goBack(BuildContext context) {
    if (Navigator.canPop(context)) Navigator.pop(context);
  }

  static void goHome(BuildContext context) {
    Navigator.pushNamed(context, '/home_page');
  }
}
