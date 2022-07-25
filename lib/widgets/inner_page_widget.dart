import 'package:flutter/material.dart';
import 'package:theory_test/widgets/appbar_mod.dart';
import 'package:theory_test/widgets/bottom_nav_bar_mod.dart';

class InnerPageWidget extends StatelessWidget {
  const InnerPageWidget({Key? key, required this.appBarTitle, this.child})
      : bodyText = null,
        super(key: key);
  const InnerPageWidget.text(
      {Key? key, required this.appBarTitle, this.bodyText})
      : child = null,
        super(key: key);
  final String appBarTitle;
  final String? bodyText;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBarMod(),
      appBar: AppBarMod(title: appBarTitle),
      body: bodyText != null
          ? Padding(
              padding: const EdgeInsets.all(15),
              child: SelectableText(
                bodyText!,
                // textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.black.withOpacity(0.50),
                    ),
              ),
            )
          : child,
    );
  }
}
