import 'package:flutter/material.dart';
import 'package:jjinternational/components/components.dart';
import 'package:jjinternational/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return LayoutBuilder(
      builder: (context, constraints) {
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
                tagline: 'Welcome To JJ International',
              ),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Text(
                        'Cocunt Wholesale Supply all over india and globally any port (cif)',
                        style: textTheme.headlineSmall!.copyWith(
                          color: AppConstant.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'We are exporting cocount regularly to various part of india and abroad throughout the year',
                        style: textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: ProductGrid(),
            ),
            const SliverToBoxAdapter(
              child: Footer(),
            )
          ],
        );
      },
    );
  }
}
