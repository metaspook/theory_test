import 'package:flutter/material.dart';
import 'package:theory_test/utils/constants.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class AboutTheoryPage extends StatelessWidget {
  const AboutTheoryPage({Key? key}) : super(key: key);
  static const routeName = '/extra/about_theory';

  @override
  Widget build(BuildContext context) {
    return const InnerPageWidget.text(
      appBarTitle: 'About Theory',
      bodyText: Constants.loremText,
    );
  }
}
