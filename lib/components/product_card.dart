import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints:
            const BoxConstraints(minWidth: 250, maxWidth: 250, minHeight: 300),
        child: Container(
          color: Colors.red,
          child: const Text('H'),
        ),
      ),
    );
  }
}
