import 'package:dartz/dartz.dart';
import 'package:online_store/Core/errors/failure.dart';
import 'package:online_store/Core/use_case/use_case.dart';
import 'package:online_store/Feature/home/domain/Repos/category_repo.dart';

import '../Entities/category_name_entity/category_entity.dart';

class FetchCategoryByNameUseCase extends UseCase<List<CategoryNameEntity>, String>{
  final CategoryRepo categoryRepo;

  FetchCategoryByNameUseCase(this.categoryRepo);
  @override
  Future<Either<Failure,List<CategoryNameEntity>>> call([String? param]) {
   return categoryRepo.fetchCategoryByName(param!);
  }
}