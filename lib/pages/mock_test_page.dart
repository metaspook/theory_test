import 'package:flutter/material.dart';
import 'package:theory_test/widgets/appbar_mod.dart';
import 'package:theory_test/widgets/bottom_nav_bar_mod.dart';
import 'package:theory_test/widgets/center_title_button.dart';
import 'package:theory_test/widgets/progress_bar.dart'
    show CircularProgressBar, LinearProgressBar;

class MockTestPage extends StatelessWidget {
  const MockTestPage({Key? key}) : super(key: key);
  static const routeName = '/mock_test';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      bottomNavigationBar: const BottomNavBarMod(),
      appBar: const AppBarMod(
        title: 'Mock Test',
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
            percent: .5,
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
                      '0',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: colorScheme.primary),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Tests Taken',
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
                      '-/50',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: colorScheme.primary),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Last Score',
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
                      '-/50',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: colorScheme.primary),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Average',
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
                    'Start Now',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: colorScheme.secondary,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          // const Spacer(),
          const SizedBox(height: 85),
          CenterTitleButton(
            title: 'Start Mock Test',
            color: colorScheme.secondary,
            titleColor: colorScheme.primary,
            onPressed: () {},
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
