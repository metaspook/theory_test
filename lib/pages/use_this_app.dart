import 'package:flutter/material.dart';
import 'package:theory_test/utils/constant.dart';
import 'package:theory_test/widgets/custom_appbar.dart';
import 'package:theory_test/widgets/custom_bottom_navigation_bar.dart';

class UseThisApp extends StatelessWidget {
  const UseThisApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(),
        appBar: const CustomAppBar(title: 'Use This App'),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SelectableText(
            Constant.loremText,
            // textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.normal,
                  color: Colors.black.withOpacity(0.50),
                ),
          ),
        ));
  }
}
