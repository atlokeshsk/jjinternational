import 'package:flutter/material.dart';
import 'package:jjinternational/components/components.dart';
import 'package:jjinternational/constants/constants.dart';

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
              child: Container(
                color: Colors.blue,
                height: 600,
              ),
            )
          ],
        );
      }),
    );
  }
}
