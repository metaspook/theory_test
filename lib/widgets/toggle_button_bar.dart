import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theory_test/controllers/settings_controller.dart';

class ToggleButtonBar extends StatelessWidget {
  const ToggleButtonBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final provider = context.read<SettingsController>();
    final activeIndex =
        context.watch<SettingsController>().toggleButtonBarActiveIndex;
    // print(provider.questionNumber);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2.5),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MaterialButton(
            elevation: 0,
            color: colorScheme.secondary,
            highlightElevation: 0,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            disabledElevation: 0,
            disabledColor: colorScheme.primary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            onPressed: activeIndex == 0
                ? null
                : () {
                    provider.setQuestionNumber(10);
                    provider.setToggleButtonBarActiveIndex(0);
                  },
            child: Text(
              '10',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: activeIndex == 0
                      ? colorScheme.secondary
                      : colorScheme.primary,
                  fontWeight: FontWeight.bold),
            ),
          ),
          MaterialButton(
            elevation: 0,
            color: colorScheme.secondary,
            highlightElevation: 0,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            disabledElevation: 0,
            disabledColor: colorScheme.primary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            onPressed: activeIndex == 1
                ? null
                : () {
                    provider.setQuestionNumber(20);
                    provider.setToggleButtonBarActiveIndex(1);
                  },
            child: Text(
              '20',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: activeIndex == 1
                      ? colorScheme.secondary
                      : colorScheme.primary,
                  fontWeight: FontWeight.bold),
            ),
          ),
          MaterialButton(
            elevation: 0,
            color: colorScheme.secondary,
            highlightElevation: 0,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            disabledElevation: 0,
            disabledColor: colorScheme.primary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            onPressed: activeIndex == 2
                ? null
                : () {
                    provider.setQuestionNumber(30);
                    provider.setToggleButtonBarActiveIndex(2);
                  },
            child: Text(
              '30',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: activeIndex == 2
                      ? colorScheme.secondary
                      : colorScheme.primary,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
