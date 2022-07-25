import 'package:flutter/material.dart';
import 'package:theory_test/utils/constants.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class UseThisAppPage extends StatelessWidget {
  const UseThisAppPage({Key? key}) : super(key: key);
  static const routeName = '/extra/use_this_app';

  @override
  Widget build(BuildContext context) {
    return const InnerPageWidget.text(
      appBarTitle: 'Use This App',
      bodyText: Constants.loremText,
    );
  }
}
