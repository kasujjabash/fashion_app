class fashionItems {
  String name;
  String price;
  String imagePath;
  String rating;

  fashionItems(
      {required this.name,
      required this.price,
      required this.imagePath,
      required this.rating});

  // Getter method to access the information
  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _rating => rating;
}
