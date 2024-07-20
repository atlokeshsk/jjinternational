import 'package:flutter/material.dart';
import 'package:jjinternational/components/components.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return const CustomScrollView(
      primary: false,
      slivers: [
        SliverToBoxAdapter(
          child: PageBanner(
            title: 'Welcome to JJ International Imports & Exports',
            tagline: 'Quality Product You Can Trust',
          ),
        ),
        SliverToBoxAdapter(
          child: ProductCard(),
        )
      ],
    );
  }
}
