import 'package:online_store/Feature/home/domain/Entities/category_name_entity/category_name_entity.dart';

abstract class FeaturedCategoryNameState{}
class FeaturedCategoryNameInitial extends FeaturedCategoryNameState{}
class FeaturedCategoryNameLoading extends FeaturedCategoryNameState{}
class FeaturedCategoryNameFailure extends FeaturedCategoryNameState{
  final String errMessage;

  FeaturedCategoryNameFailure(this.errMessage);
}
class FeaturedCategoryNameSuccess extends FeaturedCategoryNameState{
  final List<CategoryNameEntity> category;

  FeaturedCategoryNameSuccess(this.category);
}