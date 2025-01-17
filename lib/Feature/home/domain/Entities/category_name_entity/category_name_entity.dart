import 'package:hive/hive.dart';
import 'package:online_store/Feature/home/data/models/category_name/category_name_model.dart';
part 'category_name_entity.g.dart';

@HiveType(typeId: 0)
class CategoryNameEntity{
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? image;
  @HiveField(2)
  final String? title;
  @HiveField(3)
  final String? category;
  @HiveField(4)
  final String? description;
  @HiveField(5)
  final int? price;
  @HiveField(6)
  final Rating? rating;

  CategoryNameEntity({this.rating,this.id, this.image, this.title, this.description, this.price, this.category});
}