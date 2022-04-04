import 'package:flutter/cupertino.dart';
import 'package:theory_test/pages/extra_inner_page.dart'
    show ExtraInnerPageArguments;
import 'package:theory_test/utils/constants.dart';

class ExtraController extends ChangeNotifier {
  int _currentIndex = 0;

// Constants.extraInnerPageElements[index]
//                       ['outerButtonTitle'],

  void onPressed(BuildContext context, int index) {
    Navigator.pushNamed(
      context,
      Constants.extraInnerPageElements[index]['routeName']!,
      arguments: ExtraInnerPageArguments(
        appBarTitle: Constants.extraInnerPageElements[index]['appBarTitle']!,
        bodyText: Constants.extraInnerPageElements[index]['bodyText'],
      ),
    );
    print(Constants.extraInnerPageElements[index]['routeName']);
  }

  int get currentIndex => _currentIndex;
  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
