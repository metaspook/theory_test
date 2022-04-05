import 'package:flutter/material.dart';
import 'package:theory_test/widgets/appbar_mod.dart';
import 'package:theory_test/widgets/bottom_nav_bar_mod.dart';
import 'package:theory_test/widgets/center_title_button.dart';
import 'package:theory_test/widgets/progress_bar.dart'
    show CircularProgressBar, LinearProgressBar;

class PracticePage extends StatelessWidget {
  const PracticePage({Key? key}) : super(key: key);
  static const routeName = '/practice';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      bottomNavigationBar: const BottomNavBarMod(),
      appBar: const AppBarMod(
        title: 'Practice',
        iconData: Icons.dashboard_outlined,
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Text(
            "Your Progress",
            // textAlign: TextAlign.start,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.blue, fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 25),
          CircularProgressBar(
            colors: [colorScheme.primary, Colors.cyan],
            percent: 0,
            width: 12,
          ),
          const SizedBox(height: 25),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '0%',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: colorScheme.primary),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Answered',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.grey.shade700),
                    ),
                  ],
                ),
                const VerticalDivider(
                  indent: 3,
                  endIndent: 12,
                  thickness: 2,
                  // color: Colors.black,
                ),
                Column(
                  children: [
                    Text(
                      '0%',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: colorScheme.primary),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Accuracy',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.grey.shade700),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 35),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            alignment: Alignment.center,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.175),
                ),
                const BoxShadow(
                  color: Colors.white,
                  spreadRadius: -2.50,
                  blurRadius: 2.50,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 5),
                Text(
                  'Analyze your mock test performance',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.grey.shade700, fontWeight: FontWeight.bold),
                ),
                MaterialButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  color: colorScheme.primary,
                  onPressed: () {},
                  child: Text(
                    'Read',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: colorScheme.secondary,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
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
