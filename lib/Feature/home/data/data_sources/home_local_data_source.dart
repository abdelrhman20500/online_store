import '../../domain/Entities/product_entity.dart';

abstract class HomeLocalDataSource {
  List<ProductEntity> fetchFeaturedProduct();
}

class HomeLocalDataSourceImple extends HomeLocalDataSource{
  @override
  List<ProductEntity> fetchFeaturedProduct() {
    // TODO: implement fetchFeaturedProduct
    throw UnimplementedError();
  }
}