import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_store/Feature/home/domain/use_cases/fetch_category_by_name_use_case.dart';
import 'package:online_store/Feature/home/presentation/view_manger/cubits/category_name_cubit/featured_category_name_state.dart';

class FeaturedCategoryNameCubit extends Cubit<FeaturedCategoryNameState> {
  FeaturedCategoryNameCubit(this.fetchCategoryByNameUseCase)
      : super(FeaturedCategoryNameInitial());

  final FetchCategoryByNameUseCase fetchCategoryByNameUseCase;

  Future<void> fetchFeaturedCategoryName(String categoryName) async {
    emit(FeaturedCategoryNameLoading());
    var result = await fetchCategoryByNameUseCase.call(categoryName);
    result.fold(
      (failure) {
        emit(FeaturedCategoryNameFailure(failure.errorMessage));
      },
      (category) {
        emit(FeaturedCategoryNameSuccess(category));
      },
    );
  }
}
