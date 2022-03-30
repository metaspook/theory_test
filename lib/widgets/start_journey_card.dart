import 'package:flutter/material.dart';

class StartJourneyCard extends StatelessWidget {
  const StartJourneyCard({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.primary,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    fontWeight: FontWeight.bold)),
            ElevatedButton(
                onPressed: null,
                child: Text("Start now",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          fontWeight: FontWeight.bold)),
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).scaffoldBackgroundColor),
                ))
          ],
        ),
      ),
    );
  }
}
