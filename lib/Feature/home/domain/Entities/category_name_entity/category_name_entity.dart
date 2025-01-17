import 'package:online_store/Feature/home/data/models/category_name/category_name_model.dart';

class CategoryNameEntity{
  final int? id;
  final String? image;
  final String? title;
  final String? category;
  final String? description;
  final int? price;
  final Rating? rating;

  CategoryNameEntity({this.rating,this.id, this.image, this.title, this.description, this.price, this.category});
}