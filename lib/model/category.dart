class Category {

  int? id;
  String? name;

  Category({required id, required name});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] ?? 9,
      name: json['name'] ?? 'General Knowledge',
    );
  }
}