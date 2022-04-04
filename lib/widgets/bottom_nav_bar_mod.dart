import 'package:flutter/material.dart';
import 'package:theory_test/utils/constants.dart';

class BottomNavBarMod extends StatefulWidget {
  const BottomNavBarMod({Key? key}) : super(key: key);

  @override
  State<BottomNavBarMod> createState() => _BottomNavBarModState();
}

class _BottomNavBarModState extends State<BottomNavBarMod> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.175),
            spreadRadius: 5,
            blurRadius: 2.5,
          ),
        ],
      ),
      child: BottomNavigationBar(
        selectedItemColor: ThemeData().unselectedWidgetColor,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          // setState(() {
          _currentIndex = index;
          Navigator.pushNamed(
              context, Constants.bottomNavBarElements[index]['routeName']);
          print('Im $index');
          // });
        },
        elevation: 10,
        items: [
          for (var e in Constants.bottomNavBarElements)
            BottomNavigationBarItem(icon: Icon(e['icon']), label: e['label']),

          // BottomNavigationBarItem(
          //     icon: Icon(Icons.menu_book_outlined), label: "Study"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.check_circle_outline_rounded), label: "Pactice"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.alarm_on_rounded), label: "Mock Test"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.more_outlined), label: "Extra"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.settings_outlined), label: "Setting"),
        ],
      ),
    );
  }
}
