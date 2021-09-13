import 'package:flutter/material.dart';
import 'package:whatsapp_project/app/views/home_view.dart';
import 'package:whatsapp_project/app/views/splash_screen_view.dart';

main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => const HomePage(),
      },
      initialRoute: '/splash',
    );
  }
}
