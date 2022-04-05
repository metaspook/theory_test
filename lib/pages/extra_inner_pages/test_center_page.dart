import 'package:flutter/material.dart';
import 'package:theory_test/utils/constants.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class TestCenterPage extends StatelessWidget {
  const TestCenterPage({Key? key}) : super(key: key);
  static const routeName = '/extra/test_center';

  @override
  Widget build(BuildContext context) {
    return const InnerPageWidget(
      appBarTitle: 'Test Center',
      bodyText: Constants.loremText,
    );
  }
}
