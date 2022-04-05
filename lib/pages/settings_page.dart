import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theory_test/controllers/settings_controller.dart';
import 'package:theory_test/widgets/appbar_mod.dart';
import 'package:theory_test/widgets/bottom_nav_bar_mod.dart';
import 'package:theory_test/widgets/divide_arrow_button.dart';
import 'package:theory_test/widgets/switch_list_tile_mod.dart';
import 'package:theory_test/widgets/test_date_bar.dart';
import 'package:theory_test/widgets/toggle_button_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);
  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    // print('object');
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
          const TestDateBar(),
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
          const ToggleButtonBar(),
          const SizedBox(height: 30),
          const SwitchListTiles(),
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
            onPressed: () =>
                Navigator.pushNamed(context, '/settings/about_page.dart'),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class SwitchListTiles extends StatelessWidget {
  const SwitchListTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final provider = context.watch<SettingsController>();
    // print('object');

    return Column(
      children: [
        SwitchListTileMod(
          color: colorScheme.secondary,
          title: 'Voiceover',
          subtitle: 'For the Practice and Mock tast sections only.',
          value: provider.voiceOver,
          onChanged: (value) =>
              context.read<SettingsController>().setVoiceOver(value),
        ),
        const SizedBox(height: 15),
        SwitchListTileMod(
          color: colorScheme.secondary,
          title: 'Usage info',
          subtitle:
              'With your permission usage informations will be collected to help improve this app',
          value: provider.usageInfo,
          onChanged: (value) =>
              context.read<SettingsController>().setUsageInfo(value),
        ),
      ],
    );
  }
}
