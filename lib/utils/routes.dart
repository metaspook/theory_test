import 'package:theory_test/pages/extra_inner_page.dart';
import 'package:theory_test/pages/extra_page.dart';
import 'package:theory_test/pages/home_page.dart';
import 'package:theory_test/pages/study_page.dart';

/// All routes throughout the app (singleton).
class Routes {
  // This constructor prevents instantiation and extension.
  Routes._();
  static final extraInnerPageRoutes = {
    '/test_center': (_) => const ExtraInnerPage(),
    '/about_theory': (_) => const ExtraInnerPage(),
    '/highway_code': (_) => const ExtraInnerPage(),
    '/useful_links': (_) => const ExtraInnerPage(),
    '/dvsa_products': (_) => const ExtraInnerPage(),
    '/use_this_app': (_) => const ExtraInnerPage(),
    '/share_this_app': (_) => const ExtraInnerPage(),
    '/tell_us': (_) => const ExtraInnerPage(),
  };

  static const initialRoute = '/';
  static final pageRoutes = {
    '/': (_) => const HomePage(),
    '/home': (_) => const HomePage(),
    '/study': (_) => const StudyPage(),
    '/extra': (_) => const ExtraPage(),
    ...extraInnerPageRoutes,
    // ExtraInnerPage.routeName: (_) => const ExtraInnerPage(),
  };
}
