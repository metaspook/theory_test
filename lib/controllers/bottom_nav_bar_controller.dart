import 'package:flutter/material.dart';
import 'package:theory_test/pages/pages.dart';

class BottomNavBarController extends ChangeNotifier {
  int _currentIndex = 0;
  final _barElements = const <Map<String, dynamic>>[
    {
      "icon": Icons.menu_book_outlined,
      "label": "Study",
      "routeName": StudyPage.routeName,
    },
    {
      "icon": Icons.check_circle_outline_rounded,
      "label": "Practice",
      "routeName": PracticePage.routeName,
    },
    {
      "icon": Icons.alarm_on_rounded,
      "label": "Mock Test",
      "routeName": MockTestPage.routeName,
    },
    {
      "icon": Icons.more_outlined,
      "label": "Extra",
      "routeName": ExtraPage.routeName,
    },
    {
      "icon": Icons.settings_outlined,
      "label": "Settings",
      "routeName": SettingsPage.routeName,
    },
  ];

  int get currentIndex => _currentIndex;
  List<BottomNavigationBarItem> get items => [
        for (var e in _barElements)
          BottomNavigationBarItem(icon: Icon(e['icon']), label: e['label'])
      ];

  void navigateIndex(BuildContext context, int index) {
    if (currentIndex != index) {
      _currentIndex = index;
      notifyListeners();
      Navigator.pushReplacementNamed(context, _barElements[index]['routeName']);
    }
  }
}
