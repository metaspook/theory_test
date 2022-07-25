import 'package:flutter/cupertino.dart';
import 'package:theory_test/utils/methods.dart';

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

//
// -- Reset scores --
  int _studyScores = 0;
  int _practiceScores = 0;
  int _mockTestScores = 0;
  final _resetTitles = <String>[
    'All scores',
    'Study scores',
    'Practice scores',
    'Mock test scores',
    'Cancel',
  ];

  int get allScores => _studyScores + _practiceScores + _mockTestScores;
  int get studyScores => _studyScores;
  int get practiceScores => _practiceScores;
  int get mockTestScores => _mockTestScores;
  List<String> get resetTitles => _resetTitles;

  void resetStudyScores([BuildContext? context]) {
    _studyScores = 0;
    notifyListeners();
    if (context != null) Methods.goBack(context);
  }

  void resetPracticeScores([BuildContext? context]) {
    _practiceScores = 0;
    notifyListeners();
    if (context != null) Methods.goBack(context);
  }

  void resetMockTestScores([BuildContext? context]) {
    _mockTestScores = 0;
    notifyListeners();
    if (context != null) Methods.goBack(context);
  }

  void resetAllScores([BuildContext? context]) {
    _studyScores = 0;
    _practiceScores = 0;
    _mockTestScores = 0;
    notifyListeners();
    if (context != null) Methods.goBack(context);
  }

  void resetCancel(BuildContext context) {
    Methods.goBack(context);
  }

  void resetByIndex(BuildContext context, int index) {
    if (index == 0) {
      resetAllScores(context);
    } else if (index == 1) {
      resetStudyScores(context);
    } else if (index == 2) {
      resetPracticeScores(context);
    } else if (index == 3) {
      resetMockTestScores(context);
    } else if (index == 4) {
      resetCancel(context);
    } else {
      throw ('Invalid index!');
    }
  }
}
