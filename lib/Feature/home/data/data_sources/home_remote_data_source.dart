import 'package:online_store/constant/constant.dart';
import '../../../../Core/utils/api_service.dart';
import '../../../../Core/utils/functions/sava_data.dart';
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
    /// Cached Featured Product...
    savaData(products, kFeaturedBox);
    return products;
  }


  /// method
  List<ProductEntity> getProductsList(List<dynamic> data) {
    List<ProductEntity> products = [];
    for(var productMap in data)
      {
        products.add(ProductModel.fromJson(productMap));
      }
    return products;
  }
}
