import 'fashion_module.dart';

class Fashion {
  //list of fashions
  final List<FashionItem> fashionItem = [
    //fashion item 1
    FashionItem(
      name: "Mega jamper",
      price: 200,
      imagePath: "assets/images/men_fashion.jpg",
      rating: "4.5",
      style: "Female's Style",
      description:
          "Embrace a bohemian chic vibe with our floral print maxi dress. Crafted from lightweight fabric, this dress features a flattering V-neckline and flowy silhouette that enhances movement with every step.",
    ),
    //fashion item 2
    FashionItem(
      name: "Jam suit",
      price: 500,
      imagePath: "assets/images/men_fashion.jpg",
      rating: "4.5",
      style: "Male's Style",
      description:
          "Embrace a bohemian chic vibe with our floral print maxi dress. Crafted from lightweight fabric, this dress features a flattering V-neckline and flowy silhouette that enhances movement with every step.",
    ),
    //fashion item 3
    FashionItem(
      name: "Roller neck Jamper",
      price: 200,
      imagePath: "assets/images/women_fashion.jpg",
      rating: "5.5",
      style: "Male's Style",
      description:
          "Embrace a bohemian chic vibe with our floral print maxi dress. Crafted from lightweight fabric, this dress features a flattering V-neckline and flowy silhouette that enhances movement with every step.",
    ),
    //fashion item 4
    FashionItem(
      name: "Nike shoe",
      price: 400,
      imagePath: "assets/images/women_fashion.jpg",
      rating: "3.5",
      style: "Male's Style",
      description:
          "Embrace a bohemian chic vibe with our floral print maxi dress. Crafted from lightweight fabric, this dress features a flattering V-neckline and flowy silhouette that enhances movement with every step.",
    ),
  ];

  //getter
  // List<FashionItem> get getFashionItems => fashionItem;
}
