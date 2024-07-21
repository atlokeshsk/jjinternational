import 'package:flutter/material.dart';
import 'package:jjinternational/components/components.dart';
import 'package:jjinternational/constants/constants.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

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
              title: 'Welcome to JJ International Imports & Exports',
              tagline: 'We Will Get You Shortly',
            ),
          ),
        ],
      );
    });
  }
}
