import 'package:flutter/material.dart';
import 'package:jjinternational/components/components.dart';
import 'package:jjinternational/constants/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: Header(
              minExtent: AppConstant.minExtend,
              maxExtent: constraints.maxWidth < AppConstant.widthBreakPoint
                  ? AppConstant.minimizedMaxExtedn
                  : AppConstant.maxExtend,
            ),
          ),
          const SliverToBoxAdapter(
            child: PageBanner(
              title: 'JJ International Portfolio',
              tagline: 'Our Company Profile',
            ),
          ),
        ],
      );
    });
  }
}
