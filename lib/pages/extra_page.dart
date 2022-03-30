import 'package:flutter/material.dart';
import 'package:theory_test/utils/constant.dart';
import 'package:theory_test/widgets/custom_appbar.dart';
import 'package:theory_test/widgets/custom_bottom_navigation_bar.dart';
import 'package:theory_test/widgets/extra_page_card_button.dart';

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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (final e in Constant.cardButtonElements)
                  ExtraPageCardButton(
                    title: e['title'],
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => e['page']),
                    ),
                  )
              ],
            ),
          ),
        ));
  }
}
