import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../../Feature/home/data/Repos/home_repo_impl.dart';
import '../../../Feature/home/data/data_sources/home_local_data_source.dart';
import '../../../Feature/home/data/data_sources/home_remote_data_source.dart';
import '../api_service.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
      homeLocalDataSource: HomeLocalDataSourceImpl(),
    ),
  );
}
