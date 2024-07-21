import 'package:flutter/material.dart';
import 'package:jjinternational/providers/providers.dart';
import 'package:jjinternational/screens/screens.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NavigationProvider>(
        builder: (context, value, child) {
          switch (value.currentPage) {
            case Screen.home:
              return const HomeScreen();
            case Screen.product:
              return const ProductScreen();
            case Screen.profile:
              return const ProfileScreen();
            case Screen.contact:
              return const ContactUsScreen();
          }
        },
      ),
    );
  }
}
