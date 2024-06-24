import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'product_module.g.dart';//product_module adptor

// * Notes

/*!
  //? Create a class Product extends HiveObject
  //? Create the fields and specify the index. The Product is like a table,
  //? with field, Fields are columns or atributes that contain a specific type of data
  //? and define the value each record can have in a table
  //? Give a module an id by typing  @HiveType(typeId: 1)
  //? Create an adaptor by Typing part 'module_name.g.dart'
  //? Then run acommand   dart run build_runner build --delete-conflicting-outputs
  //? Declare constant and name the box, late Box<Product> productBox
  //? Initialise the   hive database in the main.dart file
  //? Register the   adptor Hive.registerAdaptor<Product>(productAdaptor) 
  //? Open the box productBox = await Hive.openBox("products");

* */
@HiveType(typeId: 1) //Every table created , we give it an id
//extending user class to a hiveobject
class Product extends HiveObject {
  //name
  @HiveField(0) //? these are field then, give it the index
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
