import 'package:flutter/material.dart';
import 'package:theory_test/utils/constants.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class HighwayCodePage extends StatelessWidget {
  const HighwayCodePage({Key? key}) : super(key: key);
  static const routeName = '/extra/highway_code';

  @override
  Widget build(BuildContext context) {
    return const InnerPageWidget(
      appBarTitle: 'Highway Code',
      bodyText: Constants.loremText,
    );
  }
}
