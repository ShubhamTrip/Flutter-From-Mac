class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product(
      {required this.description,
      required this.id,
      required this.imageUrl,
      required this.title,
      required this.price,
      this.isFavorite = false});
}
