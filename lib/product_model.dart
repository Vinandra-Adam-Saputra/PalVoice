class Product {
  final String id;
  final String name;
  final String category;

  Product({required this.id, required this.name, required this.category});

  factory Product.fromMap(Map<String, dynamic> map, String id) {
    return Product(
      id: id,
      name: map['name'] ?? '',
      category: map['category'] ?? '',
    );
  }
}