class FashionItem {
  final String name;
  final String description;
  final double price;
  final String imagePath;
  final String rating;
  final String style;

  FashionItem(
      {required this.name,
      required this.price,
      required this.imagePath,
      required this.rating,
      required this.style,
      required this.description,
      });

  // Getter method to access the information
//   String get _name => name;
//   String get _imagePath => imagePath;
//   String get _rating => rating;
}
