import 'package:flutter/material.dart';
import 'package:theory_test/utils/constants.dart';

class ExtraInnerController extends ChangeNotifier {
  final String _bodyText = Constants.loremText;

  String get bodyText => _bodyText;

  // implement method.
  void fetchBodyText() {}
}
