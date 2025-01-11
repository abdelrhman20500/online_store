import 'package:dartz/dartz.dart';
import 'package:online_store/Feature/home/domain/Repos/home_repo.dart';
import '../../../../Core/errors/failure.dart';
import '../Entities/category_entity.dart';

class FetchFeaturedCategoryUseCase{
  final HomeRepo homeRepo;

  FetchFeaturedCategoryUseCase(this.homeRepo);
  Future<Either<Failure,List<CategoryEntity>>>fetchFeaturedCategory(){
    return homeRepo.fetchFeaturedCategory();
  }
}