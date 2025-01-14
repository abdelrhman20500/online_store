import 'package:hive/hive.dart';
part 'product_entity.g.dart';
@HiveType(typeId: 0)
class ProductEntity {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? image;
  @HiveField(2)
  final String? title;
  @HiveField(3)
  final String? description;
  @HiveField(4)
  final double? price;
  ProductEntity({this.image,this.title,this.description,this.price,this.id});
}