import 'package:flutter/material.dart';
import 'package:theory_test/widgets/appbar_mod.dart';
import 'package:theory_test/widgets/bottom_nav_bar_mod.dart';
import 'package:theory_test/widgets/divide_arrow_button.dart';
import 'package:theory_test/widgets/elevated_button_mod.dart';
import 'package:theory_test/widgets/switch_list_tile_mod.dart';

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
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.blue, fontWeight: FontWeight.bold),
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
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
          const SizedBox(height: 25),
          Text(
            "Quick test - Number of questions",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          // const Spacer(),
          const SizedBox(height: 15),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
            decoration: BoxDecoration(
              color: colorScheme.secondary,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 1.5),
                  color: Colors.grey.withOpacity(0.175),
                  spreadRadius: 1.75,
                  blurRadius: 1.75,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  elevation: 2.5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  color: colorScheme.primary,
                  onPressed: () {},
                  child: Text(
                    '10',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: colorScheme.secondary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                MaterialButton(
                  elevation: 0,
                  // hoverElevation: 0,
                  highlightElevation: 0,
                  highlightColor: colorScheme.secondary,
                  splashColor: colorScheme.secondary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  color: colorScheme.secondary,
                  onPressed: () {},
                  child: Text(
                    '20',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                MaterialButton(
                  elevation: 2.5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  color: colorScheme.primary,
                  onPressed: () {},
                  child: Text(
                    '30',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: colorScheme.secondary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                // Text(
                //   '20',
                //   style: TextStyle(
                //       color: Colors.grey.shade700, fontWeight: FontWeight.bold),
                // ),
                // Text(
                //   '30',
                //   style: TextStyle(
                //       color: Colors.grey.shade700, fontWeight: FontWeight.bold),
                // ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          SwitchListTileMod(
            color: colorScheme.secondary,
            title: 'Voiceover',
            subtitle: 'For the Practice and Mock tast sections only.',
            value: false,
            onChanged: (newValue) {},
          ),
          const SizedBox(height: 15),
          SwitchListTileMod(
            color: colorScheme.secondary,
            title: 'Usage info',
            subtitle:
                'With your permission usage informations will be collected to help improve this app',
            value: true,
            onChanged: (newValue) {},
          ),
          const SizedBox(height: 35),

          DivideArrowButton(
            title: 'Reset Scores',
            titleBold: true,
            color: colorScheme.secondary,
            titleColor: Colors.grey.shade700,
            arrowColor: colorScheme.primary,
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          DivideArrowButton(
            title: 'About',
            titleBold: true,
            color: colorScheme.secondary,
            titleColor: Colors.grey.shade700,
            arrowColor: colorScheme.primary,
            onPressed: () {},
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
