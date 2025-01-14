import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:online_store/Feature/constant/constant.dart';
import 'package:online_store/Feature/home/domain/Entities/product_entity.dart';
import 'package:online_store/Feature/home/presentation/view/home_view.dart';

void main() async{
  runApp(const MyApp());
  Hive.registerAdapter(ProductEntityAdapter());
  await Hive.openBox(kFeaturedBox);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
