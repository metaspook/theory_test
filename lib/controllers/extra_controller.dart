import 'package:flutter/material.dart';
import 'package:theory_test/pages/extra_inner_pages/extra_inner_pages.dart';

class ExtraController {
  final _buttonElements = const <Map<String, String>>[
    {
      "title": "Find a driving test centre",
      "routeName": TestCenterPage.routeName,
    },
    {
      "title": "More about the theory test",
      "routeName": AboutTheoryPage.routeName,
    },
    {
      "title": "The Official Highway Code",
      "routeName": HighwayCodePage.routeName,
    },
    {
      "title": "Useful links",
      "routeName": UsefulLinksPage.routeName,
    },
    {
      "title": "More DVSA products",
      "routeName": DvsaProductsPage.routeName,
    },
    {
      "title": "How to use this app",
      "routeName": UseThisAppPage.routeName,
    },
    {
      "title": "Share this app",
      "routeName": ShareThisAppPage.routeName,
    },
    {
      "title": "Tell us what you think",
      "routeName": TellUsPage.routeName,
    },
  ];

  int get buttonsLength => _buttonElements.length;
  String title(int index) => _buttonElements[index]["title"]!;

  void navigateIndex(BuildContext context, int index) {
    Navigator.pushNamed(context, _buttonElements[index]['routeName']!);
    // print(_buttonElements[index]['routeName']);
  }
}
