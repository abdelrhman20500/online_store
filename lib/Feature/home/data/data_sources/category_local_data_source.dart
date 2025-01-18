import 'package:hive/hive.dart';
import 'package:online_store/Feature/home/domain/Entities/category_name_entity/category_name_entity.dart';
import 'package:online_store/constant/constant.dart';

abstract class CategoryLocalDataSource {
  List<CategoryNameEntity> fetchCategoryByName();
}
class CategoryLocalDataSourceImpl extends CategoryLocalDataSource{
  @override
  List<CategoryNameEntity> fetchCategoryByName() {
    var box = Hive.box<CategoryNameEntity>(kCategoryBox);
    return box.values.toList();
  }
}