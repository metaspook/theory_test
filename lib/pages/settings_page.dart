import 'package:flutter/material.dart';
import 'package:theory_test/widgets/appbar_mod.dart';
import 'package:theory_test/widgets/bottom_nav_bar_mod.dart';
import 'package:theory_test/widgets/center_title_button.dart';
import 'package:theory_test/widgets/elevated_button_mod.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      bottomNavigationBar: const BottomNavBarMod(),
      appBar: const AppBarMod(
        title: 'Settings',
        iconData: Icons.dashboard_outlined,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Text(
            "Your Test Date",
            // textAlign: TextAlign.start,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.blue, fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 15),
          ElevatedButtonMod(
              color: colorScheme.secondary,
              titleColor: Colors.grey.shade700,
              onPressed: () {},
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '15th March 2022',
                ),
              )),
          const SizedBox(height: 25),

          // const Spacer(),
          const SizedBox(height: 35),
          CenterTitleButton(
            title: 'Practice Topics',
            color: colorScheme.secondary,
            titleColor: colorScheme.primary,
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          CenterTitleButton(
            title: 'Quick Test',
            color: colorScheme.secondary,
            titleColor: colorScheme.primary,
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          CenterTitleButton(
            title: 'Practice Videos',
            color: colorScheme.secondary,
            titleColor: colorScheme.primary,
            onPressed: () {},
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
