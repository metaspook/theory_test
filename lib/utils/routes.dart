import 'package:theory_test/pages/pages.dart';

/// All routes throughout the app (singleton).
class Routes {
  // This constructor prevents instantiation and extension.
  Routes._();
  static final extraInnerPageRoutes = {
    '/extra/test_center': (_) => const ExtraInnerPage(),
    '/extra/about_theory': (_) => const ExtraInnerPage(),
    '/extra/highway_code': (_) => const ExtraInnerPage(),
    '/extra/useful_links': (_) => const ExtraInnerPage(),
    '/extra/dvsa_products': (_) => const ExtraInnerPage(),
    '/extra/use_this_app': (_) => const ExtraInnerPage(),
    '/extra/share_this_app': (_) => const ExtraInnerPage(),
    '/extra/tell_us': (_) => const ExtraInnerPage(),
  };
  static final homeChildPageRoutes = {
    '/study': (_) => const StudyPage(),
    '/practice': (_) => const PracticePage(),
    '/mock_test': (_) => const MockTestPage(),
  };

  static const initialRoute = '/';
  static final pageRoutes = {
    '/': (_) => const HomePage(),
    '/home': (_) => const HomePage(),
    '/extra': (_) => const ExtraPage(),
    '/settings': (_) => const SettingsPage(),
    ...homeChildPageRoutes,
    ...extraInnerPageRoutes,
    // ExtraInnerPage.routeName: (_) => const ExtraInnerPage(),
  };
}
