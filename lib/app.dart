import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:jjinternational/constants/constants.dart';
import 'package:jjinternational/providers/providers.dart';
import 'package:jjinternational/screens/screens.dart';
import 'package:provider/provider.dart';

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
      home: ChangeNotifierProvider(
        create: (context) => NavigationProvider(),
        child: const MainScreen(),
      ),
    );
  }
}
