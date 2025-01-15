import 'package:flutter/material.dart';

import 'build_product_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.0 / 3,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
      ),
      itemCount: 12,
      itemBuilder: (context, index) {
        return const BuildProductItem();
      },
    );
  }
}
