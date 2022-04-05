import 'package:flutter/material.dart';
import 'package:theory_test/utils/constants.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class ShareThisAppPage extends StatelessWidget {
  const ShareThisAppPage({Key? key}) : super(key: key);
  static const routeName = '/extra/share_this_app';

  @override
  Widget build(BuildContext context) {
    return const InnerPageWidget(
      appBarTitle: 'Share This App',
      bodyText: Constants.loremText,
    );
  }
}
