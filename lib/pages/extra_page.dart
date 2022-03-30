import 'package:flutter/material.dart';
import 'package:theory_test/widgets/custom_appbar.dart';
import 'package:theory_test/widgets/custom_bottom_navigation_bar.dart';
import 'package:theory_test/widgets/extra_page_card_button.dart';

class ExtraPage extends StatelessWidget {
  const ExtraPage({Key? key}) : super(key: key);

  static const _cardButtonTitleList = <String>{
    "Find a driving test centre",
    "More about the theory test",
    "The Official Highway Code",
    "Useful links",
    "More DVSA products",
    "How to use this app",
    "Share this app",
    "Tell us what you think",
  };

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(),
        appBar: const CustomAppBar(title: 'Extra'),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (final e in _cardButtonTitleList)
                  ExtraPageCardButton(text: e)
              ],
            ),
          ),
        ));
  }
}
