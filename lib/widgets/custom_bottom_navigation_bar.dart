import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (index) => setState(() {
        _currentIndex = index;
      }),
      // elevation: 10,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined), label: "Study"),
        BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline_rounded), label: "Pactice"),
        BottomNavigationBarItem(
            icon: Icon(Icons.alarm_on_rounded), label: "Mock Test"),
        BottomNavigationBarItem(
            icon: Icon(Icons.more_outlined), label: "Extra"),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined), label: "Setting"),
      ],
    );
  }
}
