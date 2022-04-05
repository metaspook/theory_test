import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theory_test/controllers/bottom_nav_bar_controller.dart';

class BottomNavBarMod extends StatefulWidget {
  const BottomNavBarMod({Key? key}) : super(key: key);

  @override
  State<BottomNavBarMod> createState() => _BottomNavBarModState();
}

class _BottomNavBarModState extends State<BottomNavBarMod> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BottomNavBarController>();
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
        currentIndex: provider.currentIndex,
        onTap: (index) => context
            .read<BottomNavBarController>()
            .navigateIndex(context, index),
        elevation: 10,
        items: provider.items,
      ),
    );
  }
}
