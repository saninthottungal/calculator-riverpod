import 'package:calculator/src/config/theme.dart';
import 'package:calculator/src/features/home/presentation/screens/screen_home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      routes: {
        '/': (context) => const ScreenHome(),
      },
    );
  }
}
