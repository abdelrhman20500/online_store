
import 'package:online_store/Feature/home/domain/Entities/product_entity.dart';

class ProductModel extends ProductEntity{
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  ProductModel({this.id, this.title, this.price, this.description, this.category, this.image, this.rating
  }): super(id :id,image: image, title:title, description: description,price: price );

  ProductModel.fromJson(Map<String, dynamic> json) {
    if(json["id"] is num) {
      id = (json["id"] as num).toInt();
    }
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["price"] is num) {
      price = (json["price"] as num).toDouble();
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["category"] is String) {
      category = json["category"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
    if(json["rating"] is Map) {
      rating = json["rating"] == null ? null : Rating.fromJson(json["rating"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["title"] = title;
    data["price"] = price;
    data["description"] = description;
    data["category"] = category;
    data["image"] = image;
    if(rating != null) {
      data["rating"] = rating?.toJson();
    }
    return data;
  }
}

class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  Rating.fromJson(Map<String, dynamic> json) {
    if(json["rate"] is num) {
      rate = (json["rate"] as num).toDouble();
    }
    if(json["count"] is num) {
      count = (json["count"] as num).toInt();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["rate"] = rate;
    data["count"] = count;
    return data;
  }
}