import 'package:hive/hive.dart';
import 'package:online_store/constant/constant.dart';

import '../../domain/Entities/product_entity.dart';

abstract class HomeLocalDataSource {
  List<ProductEntity> fetchFeaturedProduct();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource{
  @override
  List<ProductEntity> fetchFeaturedProduct() {
  var box = Hive.box<ProductEntity>(kProductBox);
  return box.values.toList();
  }
}