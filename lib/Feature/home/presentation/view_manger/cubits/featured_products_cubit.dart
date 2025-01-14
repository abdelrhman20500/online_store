import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/Feature/home/domain/use_cases/fetch_featured_product_use_case.dart';
import 'package:online_store/Feature/home/presentation/view_manger/cubits/featured_products_state.dart';

class FeaturedProductsCubit extends Cubit<FeaturedProductsState> {
  FeaturedProductsCubit(this.featuredProductUseCase)
      : super(FeaturedProductsInitial());

  final FetchFeaturedProductUseCase featuredProductUseCase;
  Future<void> fetchFeaturedProducts() async {
    emit(FeaturedProductsLoading());
    var result = await featuredProductUseCase.call();
    result.fold((failure) {
      emit(FeaturedProductsFailure(failure.errorMessage));
    }, (product) {
      emit(FeaturedProductsSuccess(product));
    });
  }
}
