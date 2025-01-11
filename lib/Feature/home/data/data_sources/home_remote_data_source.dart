import '../../domain/Entities/product_entity.dart';

abstract class HomeRemoteDataSource{
  Future<List<ProductEntity>>fetchFeaturedProduct();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  @override
  Future<List<ProductEntity>> fetchFeaturedProduct() {
    // TODO: implement fetchFeaturedProduct
    throw UnimplementedError();
  }
}