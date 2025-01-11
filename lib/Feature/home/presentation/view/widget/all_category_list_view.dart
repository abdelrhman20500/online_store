import 'package:flutter/material.dart';

import 'build_all_category_item.dart';

class AllCategoryListView extends StatelessWidget {
  const AllCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.08,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: BuildAllCategoryItem(),
          );
        },
      ),
    );
  }
}

