import 'package:dartz/dartz.dart';
import 'package:online_store/Feature/home/domain/Entities/category_name_entity/category_entity.dart';
import '../../../../Core/errors/failure.dart';

abstract class CategoryRepo{
  Future<Either<Failure,List<CategoryNameEntity>>>fetchCategoryByName(String categoryName);
}