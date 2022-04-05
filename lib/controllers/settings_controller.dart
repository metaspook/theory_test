import 'package:flutter/cupertino.dart';

class SettingsController extends ChangeNotifier {
  // String _testDate = "";
  String _testDate = "15th March 2022";
  int _questionNumber = 10;
  int _toggleButtonBarActiveIndex = 0;
  bool _voiceOver = false;
  bool _usageInfo = true;

  String get testDate => _testDate;
  int get questionNumber => _questionNumber;
  int get toggleButtonBarActiveIndex => _toggleButtonBarActiveIndex;
  bool get voiceOver => _voiceOver;
  bool get usageInfo => _usageInfo;

  void setTestDate(String date) {
    _testDate = date;
    notifyListeners();
  }

  void setQuestionNumber(int number) {
    _questionNumber = number;
    notifyListeners();
  }

  void setToggleButtonBarActiveIndex(int index) {
    _toggleButtonBarActiveIndex = index;
    notifyListeners();
  }

  void setVoiceOver(bool value) {
    _voiceOver = value;
    notifyListeners();
  }

  void setUsageInfo(bool value) {
    _usageInfo = value;
    notifyListeners();
  }
}
