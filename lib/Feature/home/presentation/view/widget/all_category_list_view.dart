import 'package:flutter/material.dart';
import 'package:online_store/Feature/home/data/models/category_name/category_model.dart';

import 'build_all_category_item.dart';

class AllCategoryListView extends StatelessWidget {
   AllCategoryListView({super.key});

  // Define a list of categories
  final List<CategoryModel> categories = [
    CategoryModel("Electronics"),
    CategoryModel("Jewelery"),
    CategoryModel("Men's Clothing"),
    CategoryModel("Women's Clothing"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.08,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: BuildAllCategoryItem(category:categories[index] ,),
          );
        },
      ),
    );
  }
}

