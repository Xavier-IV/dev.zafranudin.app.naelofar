class Product {
  String title;
  String description;
  List<String> images;
  double price;

  Product({
    required this.title,
    required this.price,
    this.images = const [],
    this.description = '',
  });
}
