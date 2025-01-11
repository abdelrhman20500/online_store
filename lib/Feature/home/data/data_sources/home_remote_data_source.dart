import '../../../../Core/utils/api_service.dart';
import '../../domain/Entities/product_entity.dart';
import '../models/product_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<ProductEntity>> fetchFeaturedProduct();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;
  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<ProductEntity>> fetchFeaturedProduct() async {
    var data = await apiService.get(endpoint: "products");
    List<ProductEntity> products = getProductsList(data);
    return products;
  }

  List<ProductEntity> getProductsList(Map<String, dynamic> data) {
    List<ProductEntity> products = [];
    for(var productMap in data[" "])
      {
        products.add(ProductModel.fromJson(productMap));
      }
    return products;
  }
}
