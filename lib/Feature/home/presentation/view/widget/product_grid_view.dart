import 'package:flutter/material.dart';
import 'package:online_store/Feature/home/domain/Entities/product_entity.dart';

import 'build_product_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key, required this.product,});

  final List<ProductEntity> product;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.0 / 3.4,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
      ),
      itemCount: product.length,
      itemBuilder: (context, index) {
        return BuildProductItem(
          title: product[index].title ?? "",
          image: product[index].image ?? "",
          description: product[index].description ?? "",
          price: product[index].price ?? 0.0,
        );
      },
    );
  }
}
