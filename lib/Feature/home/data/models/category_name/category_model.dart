class CategoryModel {
  final String name;
  CategoryModel(this.name);
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(json['name'] as String);
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }
}