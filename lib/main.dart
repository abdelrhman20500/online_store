import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:online_store/Core/utils/functions/set_up_service_locator.dart';
import 'package:online_store/Core/utils/functions/simple_bloc_observer.dart';
import 'package:online_store/Feature/home/data/Repos/home_repo_impl.dart';
import 'package:online_store/Feature/home/domain/Entities/product_entity.dart';
import 'package:online_store/Feature/home/domain/use_cases/fetch_featured_product_use_case.dart';
import 'package:online_store/Feature/home/presentation/view/home_view.dart';
import 'package:online_store/Feature/home/presentation/view_manger/cubits/featured_products_cubit.dart';

import 'constant/constant.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(ProductEntityAdapter());
  setUpServiceLocator();
  await Hive.openBox(kFeaturedBox);
  Bloc.observer= SimpleBlocObserver();
  runApp(const MyApp());
}

// final getIt = GetIt.instance;
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return FeaturedProductsCubit(FetchFeaturedProductUseCase(
             getIt.get<HomeRepoImpl>(),
          ),
          );
        })
      ],
      child: const MaterialApp(
       debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
