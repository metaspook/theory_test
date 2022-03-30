import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:theory_test/widgets/custom_appbar.dart';

class StudyPage extends StatelessWidget {
  const StudyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: CustomAppBar(
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
            CircularPercentIndicator(
              arcType: ArcType.FULL,
              arcBackgroundColor: colorScheme.secondary,
              radius: 120.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.7,
              center: Text(
                "70.0%",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              footer: Text(
                "Sales this week",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
