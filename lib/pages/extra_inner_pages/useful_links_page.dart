import 'package:flutter/material.dart';
import 'package:theory_test/utils/constants.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class UsefulLinksPage extends StatelessWidget {
  const UsefulLinksPage({Key? key}) : super(key: key);
  static const routeName = '/extra/useful_links';

  @override
  Widget build(BuildContext context) {
    return const InnerPageWidget.text(
      appBarTitle: 'Useful Links',
      bodyText: Constants.loremText,
    );
  }
}
