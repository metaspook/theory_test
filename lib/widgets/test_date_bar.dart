import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theory_test/controllers/settings_controller.dart';

class TestDateBar extends StatelessWidget {
  const TestDateBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final provider = context.watch<SettingsController>();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.5, vertical: 15),
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
      child: Text(
        provider.testDate,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Colors.grey.shade800, fontWeight: FontWeight.w600),
      ),
    );
  }
}
