import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:online_store/Core/errors/failure.dart';
import 'package:online_store/Feature/home/data/data_sources/category_local_data_source.dart';
import 'package:online_store/Feature/home/data/data_sources/category_remote_data_source.dart';
import 'package:online_store/Feature/home/domain/Entities/category_name_entity/category_name_entity.dart';
import 'package:online_store/Feature/home/domain/Repos/category_repo.dart';

class CategoryNameRepoImpl extends CategoryRepo {
  final CategoryLocalDataSource categoryLocalDataSource;
  final CategoryRemoteDataSource categoryRemoteDataSource;

  CategoryNameRepoImpl(
      this.categoryLocalDataSource, this.categoryRemoteDataSource);
  @override
  Future<Either<Failure, List<CategoryNameEntity>>> fetchCategoryByName(
      String categoryName) async {
    try {
      var productList = categoryLocalDataSource.fetchCategoryByName();
      if (productList.isNotEmpty) {
        return right(productList);
      }
      var product =
          await categoryRemoteDataSource.fetchCategoryByName(categoryName);
      return right(product);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
