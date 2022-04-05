import 'package:flutter/material.dart';
import 'package:theory_test/widgets/appbar_mod.dart';
import 'package:theory_test/widgets/bottom_nav_bar_mod.dart';

// class InnerPageWidgetArguments {
//   InnerPageWidgetArguments({required this.appBarTitle, this.bodyText});
//   final String appBarTitle;
//   final String? bodyText;
// }

class InnerPageWidget extends StatelessWidget {
  const InnerPageWidget({Key? key, required this.appBarTitle, this.bodyText})
      : super(key: key);
  // static String routeName = '/extra_inner_page';
  // static void setRouteNamex(String name) => routeName = name;
  final String appBarTitle;
  final String? bodyText;

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    // final args =
    //     ModalRoute.of(context)!.settings.arguments as InnerPageWidgetArguments;

    return Scaffold(
      bottomNavigationBar: const BottomNavBarMod(),
      appBar: AppBarMod(title: appBarTitle),
      body: bodyText == null
          ? null
          : Padding(
              padding: const EdgeInsets.all(15),
              child: SelectableText(
                bodyText!,
                // textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.black.withOpacity(0.50),
                    ),
              ),
            ),
    );
  }
}
