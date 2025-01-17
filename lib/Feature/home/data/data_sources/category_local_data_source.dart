import 'package:online_store/Feature/home/domain/Entities/category_name_entity/category_name_entity.dart';

abstract class CategoryLocalDataSource {
  List<CategoryNameEntity> fetchCategoryByName();
}
class CategoryLocalDataSourceImpl extends CategoryLocalDataSource{
  @override
  List<CategoryNameEntity> fetchCategoryByName() {
    // TODO: implement fetchCategoryByName
    throw UnimplementedError();
  }
}