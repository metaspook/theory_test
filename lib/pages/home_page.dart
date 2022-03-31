import 'package:flutter/material.dart';
import 'package:theory_test/widgets/custom_appbar.dart';
import 'package:theory_test/widgets/custom_bottom_navigation_bar.dart';
import 'package:theory_test/widgets/progress_bar.dart';
import 'package:theory_test/widgets/start_journey_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(),
        appBar: const CustomAppBar(
          title: 'Theory test',
          iconData: Icons.dashboard_outlined,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                Card(
                  elevation: 5,
                  // color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Text(
                          "Your Progress",
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    color: Colors.blue,
                                  ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [Text("Study"), Text("15%")],
                        ),
                        const SizedBox(height: 10),
                        const LinearProgressBar(percent: 15),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [Text("Pactice"), Text("20%")],
                        ),
                        const SizedBox(height: 10),
                        const LinearProgressBar(percent: 20),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [Text("Mock test"), Text("12%")],
                        ),
                        const SizedBox(height: 10),
                        const LinearProgressBar(percent: 12),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Start Your Journey",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const StartJourneyCard(title: 'Study'),
                const SizedBox(height: 10),
                const StartJourneyCard(title: 'Practice'),
                const SizedBox(height: 10),
                const StartJourneyCard(title: 'Mock Test'),
                const Expanded(child: SizedBox()),
              ],
            ),
          ),
        ));
  }
}
