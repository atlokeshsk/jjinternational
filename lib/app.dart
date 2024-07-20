import 'package:flutter/material.dart';
import 'package:jjinternational/screens/screens.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'JJ International',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
