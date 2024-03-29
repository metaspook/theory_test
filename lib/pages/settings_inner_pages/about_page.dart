import 'package:flutter/material.dart';
import 'package:theory_test/utils/constants.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  static const routeName = '/settings/about_page.dart';

  @override
  Widget build(BuildContext context) {
    return const InnerPageWidget.text(
      appBarTitle: 'About',
      bodyText: Constants.loremText,
    );
  }
}
