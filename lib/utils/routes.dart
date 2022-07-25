import 'package:theory_test/pages/extra_inner_pages/extra_inner_pages.dart';
import 'package:theory_test/pages/interview_page.dart';
import 'package:theory_test/pages/interview_page2.dart';
import 'package:theory_test/pages/observation_page.dart';
import 'package:theory_test/pages/observation_page2.dart';
import 'package:theory_test/pages/pages.dart';
import 'package:theory_test/pages/question_page.dart';
import 'package:theory_test/pages/question_page2.dart';
import 'package:theory_test/pages/question_page3.dart';
import 'package:theory_test/pages/question_page4.dart';
import 'package:theory_test/pages/question_page5.dart';
import 'package:theory_test/pages/select_topic_page.dart';
import 'package:theory_test/pages/select_topic_page2.dart';

/// All routes throughout the app (singleton).
class Routes {
  // This constructor prevents instantiation and extension.
  Routes._();
  static final extraInnerPageRoutes = {
    '/extra/test_center': (_) => const TestCenterPage(),
    '/extra/about_theory': (_) => const AboutTheoryPage(),
    '/extra/highway_code': (_) => const HighwayCodePage(),
    '/extra/useful_links': (_) => const UsefulLinksPage(),
    '/extra/dvsa_products': (_) => const DvsaProductsPage(),
    '/extra/use_this_app': (_) => const UseThisAppPage(),
    '/extra/share_this_app': (_) => const ShareThisAppPage(),
    '/extra/tell_us': (_) => const TellUsPage(),
  };
  static final homeChildPageRoutes = {
    '/study': (_) => const StudyPage(),
    '/study/observation': (_) => const ObservationPage(),
    '/study/select_topic': (_) => const SelectTopicPage(),
    '/study/observation2': (_) => const ObservationPage2(),
    '/study/interview': (_) => const InterviewPage(),
    '/study/interview2': (_) => const InterviewPage2(),
    '/practice': (_) => const PracticePage(),
    '/practice/question': (_) => const QuestionPage(),
    '/practice/question2': (_) => const QuestionPage2(),
    '/practice/question3': (_) => const QuestionPage3(),
    '/practice/question4': (_) => const QuestionPage4(),
    '/practice/select_topic2': (_) => const SelectTopicPage2(),
    '/mock_test': (_) => const MockTestPage(),
    '/mock_test/question5': (_) => const QuestionPage5(),
  };
  static final pageRoutes = {
    '/': (_) => const QuestionPage5(),
    '/home': (_) => const HomePage(),
    '/extra': (_) => const ExtraPage(),
    '/settings': (_) => const SettingsPage(),
    '/settings/about_page.dart': (_) => const AboutPage(),
    ...homeChildPageRoutes,
    ...extraInnerPageRoutes,
    // ExtraInnerPage.routeName: (_) => const ExtraInnerPage(),
  };
  static const initialRoute = '/';
}
