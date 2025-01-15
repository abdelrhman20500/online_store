
import 'package:hive/hive.dart';
import '../../../Feature/home/domain/Entities/product_entity.dart';

void savaData(List<ProductEntity> products, String boxName) {
  var box = Hive.box(boxName);
  box.addAll(products);
}