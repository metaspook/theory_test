import 'package:flutter/material.dart';

class BottomNavigationBarMod extends StatefulWidget {
  const BottomNavigationBarMod({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarMod> createState() => _BottomNavigationBarModState();
}

class _BottomNavigationBarModState extends State<BottomNavigationBarMod> {
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
        onTap: (index) => setState(() {
          _currentIndex = index;
          print('Im $index');
        }),
        elevation: 10,
        items: const [
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
      ),
    );
  }
}
