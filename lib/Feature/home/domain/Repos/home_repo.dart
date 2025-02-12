import 'package:dartz/dartz.dart';
import 'package:online_store/Core/errors/failure.dart';
import 'package:online_store/Feature/home/domain/Entities/product_entity.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<ProductEntity>>>fetchFeaturedProduct();
}
