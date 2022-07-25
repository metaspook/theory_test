import 'package:flutter/material.dart';
import 'package:theory_test/utils/constants.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class TellUsPage extends StatelessWidget {
  const TellUsPage({Key? key}) : super(key: key);
  static const routeName = '/extra/tell_us';

  @override
  Widget build(BuildContext context) {
    return const InnerPageWidget.text(
      appBarTitle: 'Tell Us',
      bodyText: Constants.loremText,
    );
  }
}
