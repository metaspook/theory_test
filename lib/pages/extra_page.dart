import 'package:flutter/material.dart';
import 'package:theory_test/controllers/extra_controller.dart';
import 'package:theory_test/widgets/appbar_mod.dart';
import 'package:theory_test/widgets/bottom_nav_bar_mod.dart';
import 'package:theory_test/widgets/divide_arrow_button.dart';

class ExtraPage extends StatelessWidget {
  const ExtraPage({Key? key}) : super(key: key);
  static const routeName = '/extra';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final controller = ExtraController();
    return Scaffold(
        bottomNavigationBar: const BottomNavBarMod(),
        appBar: const AppBarMod(
          title: "Extra",
          iconData: Icons.dashboard_outlined,
        ),
        body: Center(
          child: ListView.builder(
            itemCount: controller.buttonsLength,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                child: DivideArrowButton(
                  title: controller.title(index),
                  color: colorScheme.secondary,
                  titleColor: Colors.grey.shade700,
                  arrowColor: colorScheme.primary,
                  onPressed: () => controller.navigateIndex(context, index),
                ),
              );
            },
          ),
        ));
  }
}
