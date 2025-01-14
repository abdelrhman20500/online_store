import 'package:online_store/Feature/home/domain/Entities/product_entity.dart';

abstract class FeaturedProductsState{}
class FeaturedProductsInitial extends FeaturedProductsState{}
class FeaturedProductsLoading extends FeaturedProductsState{}
class FeaturedProductsFailure extends FeaturedProductsState{
  final String errMessage;

  FeaturedProductsFailure(this.errMessage);
}
class FeaturedProductsSuccess extends FeaturedProductsState{
  final ProductEntity product;

  FeaturedProductsSuccess(this.product);
}