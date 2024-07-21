import 'package:flutter/material.dart';
import 'package:jjinternational/components/components.dart';
import 'package:jjinternational/constants/constants.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return CustomScrollView(
        primary: false,
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
              tagline: 'Quality Product You Can Trust',
            ),
          ),
          const SliverToBoxAdapter(
            child: ProductCard(),
          )
        ],
      );
    });
  }
}
