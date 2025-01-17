import 'package:online_store/Core/utils/api_service.dart';
import 'package:online_store/Feature/home/data/models/category_name/category_name_model.dart';
import 'package:online_store/Feature/home/domain/Entities/category_name_entity/category_name_entity.dart';

abstract class CategoryRemoteDataSource {
  Future<List<CategoryNameEntity>> fetchCategoryByName(String categoryName);
}

class CategoryRemoteDataSourceImp extends CategoryRemoteDataSource{
  final ApiService apiService;

  CategoryRemoteDataSourceImp(this.apiService);
  @override
  Future<List<CategoryNameEntity>> fetchCategoryByName(String categoryName) async{
    var data = await apiService.get(endpoint: "products/category/$categoryName");
    List<CategoryNameEntity> category = getCategoryList(data);
    return category;
  }

  List<CategoryNameEntity> getCategoryList(List<dynamic> data) {
    List<CategoryNameEntity> category= [];
    for(var categoryMap in data)
      {
        category.add(CategoryNameModel.fromJson(categoryMap));
      }
    return category;
  }
}

