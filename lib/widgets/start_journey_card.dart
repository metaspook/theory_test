import 'package:flutter/material.dart';

class StartJourneyCard extends StatelessWidget {
  const StartJourneyCard({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Card(
      color: colorScheme.primary,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: colorScheme.secondary, fontWeight: FontWeight.bold)),
            ElevatedButton(
                onPressed: null,
                child: Text("Start now",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(
                          color: colorScheme.secondary,
                          fontWeight: FontWeight.bold)),
                  backgroundColor:
                      MaterialStateProperty.all(colorScheme.secondary),
                ))
          ],
        ),
      ),
    );
  }
}
