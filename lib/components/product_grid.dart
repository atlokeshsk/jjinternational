import 'package:flutter/material.dart';
import 'package:jjinternational/components/components.dart';
import 'package:jjinternational/models/models.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Center(
        child: SizedBox(
          width: constraints.maxWidth < 902 ? 500 : 1000,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: constraints.maxWidth < 902 ? 2 : 3,
              mainAxisExtent: 440,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return ProductCard(product: Product.products[index % 3]);
            },
            itemCount: 6,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ),
      );
    });
  }
}
