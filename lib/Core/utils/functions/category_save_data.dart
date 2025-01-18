import 'package:hive/hive.dart';
import '../../../Feature/home/domain/Entities/category_name_entity/category_name_entity.dart';
import '../../../constant/constant.dart';

void categorySaveData(List<CategoryNameEntity> category, String boxName) {
  var box = Hive.box(kCategoryBox);
  box.addAll(category);
}