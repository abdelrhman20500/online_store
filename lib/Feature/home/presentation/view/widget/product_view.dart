import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/Feature/home/presentation/view/widget/product_grid_view.dart';
import 'package:online_store/Feature/home/presentation/view_manger/cubits/featured_products_cubit.dart';
import 'package:online_store/Feature/home/presentation/view_manger/cubits/featured_products_state.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedProductsCubit, FeaturedProductsState>(
      builder: (context, state) {
        if (state is FeaturedProductsSuccess) {
          return const ProductGridView();
        } else if (state is FeaturedProductsFailure) {
          print(state.errMessage);
          return Text(state.errMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
