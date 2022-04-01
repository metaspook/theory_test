import 'package:flutter/material.dart';
import 'package:theory_test/utils/constant.dart';
import 'package:theory_test/widgets/custom_appbar.dart';
import 'package:theory_test/widgets/custom_bottom_navigation_bar.dart';
import 'package:theory_test/widgets/divide_arrow_button.dart';

class ExtraPage extends StatelessWidget {
  const ExtraPage({Key? key}) : super(key: key);

//
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(),
        appBar: const CustomAppBar(
          title: 'Extra',
          iconData: Icons.dashboard_outlined,
        ),
        body: Center(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (final e in Constant.cardButtonElements)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                  child: DivideArrowButton(
                    title: e['title'],
                    color: colorScheme.secondary,
                    titleColor: Colors.grey.shade700,
                    arrowColor: colorScheme.primary,
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => e['page']),
                    ),
                  ),
                ),
            ],
          ),
        ));
  }
}
