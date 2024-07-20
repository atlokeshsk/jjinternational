import 'package:flutter/material.dart';
import 'package:jjinternational/constants/constants.dart';
import 'package:jjinternational/screens/screens.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JJ International',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              backgroundColor: AppConstant.filledButtonBackground),
        ),
      ),
      home: const MainScreen(),
    );
  }
}
