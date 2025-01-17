import 'package:flutter/material.dart';
import 'package:online_store/Feature/home/presentation/view/widget/product_view_bloc_builder.dart';

import 'all_category_list_view.dart';
import 'category_search.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          const CategorySearch(),
          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
          const Text("Categories", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
          AllCategoryListView(),
          const Expanded(
              child: ProductViewBlocBuilder()),
        ],
      ),
    );
  }
}
