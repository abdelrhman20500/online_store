import 'package:dartz/dartz.dart';
import 'package:online_store/Core/errors/failure.dart';
import 'package:online_store/Core/use_case/use_case.dart';
import 'package:online_store/Feature/home/domain/Entities/product_entity.dart';
import 'package:online_store/Feature/home/domain/Repos/home_repo.dart';

class FetchFeaturedProductUseCase extends UseCase<List<ProductEntity>, NoParam>{
  final HomeRepo homeRepo;
  FetchFeaturedProductUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<ProductEntity>>> call([NoParam? param]) {
   return homeRepo.fetchFeaturedProduct();
  }
}