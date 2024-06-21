import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'product_module.g.dart';

@HiveType(typeId: 1) //Every table created , we give itan id
//extending user class to a hive object
class Product extends HiveObject {
  //name
  @HiveField(0) //? this field then give it the index
  String name;

  //description
  @HiveField(1)
  String description;
  //price
  @HiveField(2)
  double price;

  //imagePath
  @HiveField(3)
  Uint8List productImage; //storing it as a bit

  //rating
  @HiveField(4)
  double rating;

  //style
  @HiveField(5)
  String style;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.productImage,
    required this.rating,
    required this.style,
  });
}
