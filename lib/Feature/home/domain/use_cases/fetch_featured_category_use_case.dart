import 'package:dartz/dartz.dart';
import 'package:online_store/Feature/home/domain/Repos/home_repo.dart';
import '../../../../Core/errors/failure.dart';
import '../../../../Core/use_case/use_case.dart';
import '../Entities/category_entity.dart';

class FetchFeaturedCategoryUseCase extends UseCase<List<CategoryEntity>, NoParam>{
  final HomeRepo homeRepo;
  FetchFeaturedCategoryUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<CategoryEntity>>> call([NoParam? param]) {
   return homeRepo.fetchFeaturedCategory();
  }
}

