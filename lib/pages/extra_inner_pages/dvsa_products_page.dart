import 'package:flutter/material.dart';
import 'package:theory_test/utils/constants.dart';
import 'package:theory_test/widgets/inner_page_widget.dart';

class DvsaProductsPage extends StatelessWidget {
  const DvsaProductsPage({Key? key}) : super(key: key);
  static const routeName = '/extra/dvsa_products';

  @override
  Widget build(BuildContext context) {
    return const InnerPageWidget.text(
      appBarTitle: 'DVSA Products',
      bodyText: Constants.loremText,
    );
  }
}
