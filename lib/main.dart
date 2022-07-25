import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theory_test/controllers/bottom_nav_bar_controller.dart';
import 'package:theory_test/controllers/settings_controller.dart';
import 'package:theory_test/utils/routes.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => SettingsController()),
    ChangeNotifierProvider(create: (_) => BottomNavBarController()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          colorScheme: ColorScheme.light(
        primary: Colors.blue,
        secondary: Theme.of(context).scaffoldBackgroundColor,
      )),
      initialRoute: Routes.initialRoute,
      routes: Routes.pageRoutes,
    );
  }
}
