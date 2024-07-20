import 'package:flutter/material.dart';
import 'package:jjinternational/components/components.dart';
import 'package:jjinternational/constants/constants.dart';
import 'package:jjinternational/providers/providers.dart';
import 'package:jjinternational/screens/screens.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: Header(
                  minExtent: AppConstant.minExtend,
                  maxExtent: constraints.maxWidth < AppConstant.widthBreakPoint
                      ? AppConstant.minimizedMaxExtedn
                      : AppConstant.maxExtend),
            ),
            //TODO: ADD BODY CONTENT HERE.
            SliverFillRemaining(
              child: Consumer<NavigationProvider>(
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
            )
          ],
        );
      }),
    );
  }
}
