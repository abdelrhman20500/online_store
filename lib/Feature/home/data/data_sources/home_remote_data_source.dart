import 'package:hive/hive.dart';
import '../../../../Core/utils/api_service.dart';
import '../../../../constant/constant.dart';
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
    var box = Hive.box<ProductEntity>(kProductBox);

    // Check if there are cached products
    if (box.isNotEmpty) {
      return box.values.toList();
    }

    // Fetch from API if no cached products
    var data = await apiService.get(endpoint: "products");
    List<ProductEntity> products = getProductsList(data);

    // Cache Featured Product
    await box.putAll({ for (var v in products) v.id : v });

    return products;
  }

  // Method to convert API response to ProductEntity list
  List<ProductEntity> getProductsList(List<dynamic> data) {
    List<ProductEntity> products = [];
    for (var productMap in data) {
      products.add(ProductModel.fromJson(productMap));
    }
    return products;
  }
}


/// before code ...
// abstract class HomeRemoteDataSource {
//   Future<List<ProductEntity>> fetchFeaturedProduct();
// }
//
// class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
//   final ApiService apiService;
//   HomeRemoteDataSourceImpl(this.apiService);
//   @override
//   Future<List<ProductEntity>> fetchFeaturedProduct() async {
//     var data = await apiService.get(endpoint: "products");
//     List<ProductEntity> products = getProductsList(data);
//     /// Cached Featured Product...
//     savaData(products, kProductBox);
//     return products;
//   }
//
//
//
//   /// method
//   List<ProductEntity> getProductsList(List<dynamic> data) {
//     List<ProductEntity> products = [];
//     for(var productMap in data)
//       {
//         products.add(ProductModel.fromJson(productMap));
//       }
//     return products;
//   }
// }