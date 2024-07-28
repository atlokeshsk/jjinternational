import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jjinternational/models/models.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.product});
  final Product product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  double elevation = 0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MouseRegion(
      onHover: (event) {
        setState(() {
          elevation = 100;
        });
      },
      onExit: (event) {
        setState(() {
          elevation = 0.0;
        });
      },
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => context.goNamed(widget.product.detailScreen),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 280,
              maxWidth: 280,
            ),
            child: Card(
              elevation: elevation,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(widget.product.imageUrl)),
                    Text(
                      widget.product.title,
                      style: textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      widget.product.content,
                      style: textTheme.bodyMedium!,
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
