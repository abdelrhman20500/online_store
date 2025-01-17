import 'package:online_store/Feature/home/domain/Entities/category_name_entity/category_name_entity.dart';

abstract class CategoryRemoteDataSource {
  Future<List<CategoryNameEntity>> fetchCategoryByName(String categoryName);
}

class CategoryRemoteDataSourceImp extends CategoryRemoteDataSource{
  @override
  Future<List<CategoryNameEntity>> fetchCategoryByName(String categoryName) {
    // TODO: implement fetchCategoryByName
    throw UnimplementedError();
  }
}