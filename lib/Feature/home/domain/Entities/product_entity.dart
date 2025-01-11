class ProductEntity {
  final int? id;
  final String? image;
  final String? title;
  final String? description;
  final double? price;
  // final double? rating;

  ProductEntity(
      {this.image,
      this.title,
      this.description,
      this.price,
      // this.rating,
      this.id});
}

// class Rating {
//   final double rate;
//   final int count;
//   Rating({required this.rate, required this.count});
// }
