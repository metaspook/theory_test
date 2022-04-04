import 'package:theory_test/pages/extra_inner_page.dart';
import 'package:theory_test/pages/extra_page.dart';
import 'package:theory_test/pages/home_page.dart';
import 'package:theory_test/pages/study_page.dart';

/// All routes throughout the app (singleton).
class Routes {
  // This constructor prevents instantiation and extension.
  Routes._();
  static const initialRoute = '/extra_page';
  static final pageRoutes = {
    '/': (_) => const StudyPage(),
    '/home_page': (_) => const HomePage(),
    '/extra_page': (_) => const ExtraPage(),
    ExtraInnerPage.routeName: (_) => const ExtraInnerPage(),
  };
}
