import 'package:flutter/material.dart';
import 'package:theory_test/widgets/custom_appbar.dart';
import 'package:theory_test/widgets/progress_bar.dart'
    show CircularProgressBar, LinearProgressBar;

class StudyPage extends StatelessWidget {
  const StudyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Study Page',
        iconData: Icons.dashboard_outlined,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              "Your Progress",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.blue, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 20),
            const CircularProgressBar(),
            const SizedBox(height: 50),
            LinearProgressBar(
              color: colorScheme.primary,
              percent: 0.7,
              height: 12.5,
            ),
          ],
        ),
      ),
    );
  }
}
