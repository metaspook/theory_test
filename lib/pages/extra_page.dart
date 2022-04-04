import 'package:flutter/material.dart';
import 'package:theory_test/pages/extra_inner_page.dart';
import 'package:theory_test/utils/constants.dart';
import 'package:theory_test/widgets/appbar_mod.dart';
import 'package:theory_test/widgets/bottom_navigation_bar_mod.dart';
import 'package:theory_test/widgets/divide_arrow_button.dart';

class ExtraPage extends StatelessWidget {
  const ExtraPage({Key? key}) : super(key: key);

//
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
        bottomNavigationBar: const BottomNavigationBarMod(),
        appBar: const AppBarMod(
          title: 'Extra',
          iconData: Icons.dashboard_outlined,
        ),
        body: Center(
          child: ListView.builder(
            itemCount: Constants.extraInnerPageElements.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                child: DivideArrowButton(
                  title: Constants.extraInnerPageElements[index]
                      ['outerButtonTitle'],
                  color: colorScheme.secondary,
                  titleColor: Colors.grey.shade700,
                  arrowColor: colorScheme.primary,
                  onPressed: () {
                    // ExtraInnerPage.setRouteNamex(
                    //     Constants.extraInnerPageElements[index]['routeName']!);
                    // print(ExtraInnerPage.routeName);
                    Navigator.pushNamed(
                      context,
                      ExtraInnerPage.routeName,
                      arguments: ExtraInnerPageArguments(
                        appBarTitle: Constants.extraInnerPageElements[index]
                            ['appBarTitle']!,
                        bodyText: Constants.extraInnerPageElements[index]
                            ['bodyText'],
                      ),
                    );
                  },
                ),
              );
            },
          ),

          // ListView.builder(
          //   // mainAxisAlignment: MainAxisAlignment.center,
          //   // crossAxisAlignment: CrossAxisAlignment.stretch,
          //   children: [
          //     for (final e in Constants.extraPageElements)
          //       Padding(
          //         padding:
          //             const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
          //         child: DivideArrowButton(
          //           title: e['title'],
          //           color: colorScheme.secondary,
          //           titleColor: Colors.grey.shade700,
          //           arrowColor: colorScheme.primary,
          //           onPressed: () =>
          //               Navigator.pushNamed(context, ExtraInnerPage.routeName,
          //                   arguments: ExtraInnerPageArguments(
          //                     appBarTitle: 'appBarTitle',
          //                     bodyText: Constants.loremText,
          //                   )),
          //         ),
          //       ),
          //   ],
          // ),
        ));
  }
}
