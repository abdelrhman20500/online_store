import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:online_store/Core/errors/failure.dart';
import 'package:online_store/Feature/home/data/data_sources/home_local_data_source.dart';
import 'package:online_store/Feature/home/data/data_sources/home_remote_data_source.dart';
import 'package:online_store/Feature/home/domain/Entities/product_entity.dart';
import 'package:online_store/Feature/home/domain/Repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo{
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<ProductEntity>>> fetchFeaturedProduct() async{
   try {
     var productList = homeLocalDataSource.fetchFeaturedProduct();
     if(productList.isNotEmpty)
       {
         return right(productList);
       }
     var products = await homeRemoteDataSource.fetchFeaturedProduct();
     return right(products);
   }catch (e) {
     if(e is DioException)
       {
         return left(ServerFailure.fromDiorError(e));
       }else
         {
           return left(ServerFailure(e.toString()));
         }
   }
  }
}