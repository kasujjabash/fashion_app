import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/constants/hive_box_constants.dart';

import '../module/hive_modules/product_module.dart';

class ProductController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  Uint8List? productImageController;
  TextEditingController ratingController = TextEditingController();
  TextEditingController styleController = TextEditingController();

  void add() async {
    Product product = Product(
      name: nameController.text,
      description: descriptionController.text,
      price: double.parse(priceController.text), //phrase
      productImage: productImageController!,
      rating: double.parse(ratingController.text),
      style: styleController.text,
    );

    await productBox.add(product);
    product.save();
  }

  // void pickImageFile() {
  //   FilePickerResult pickedImage = await FilePicker.
  // }
}
