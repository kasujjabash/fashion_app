import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/constants/hive_box_constants.dart';

import '../module/hive_modules/product_module.dart';
import '../screens/home_screen.dart';

class ProductController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  Uint8List? productImage;
  TextEditingController ratingController = TextEditingController();
  TextEditingController styleController = TextEditingController();

  bool isLoading = false;

  void addProduct() async {
    try {
      Product product = Product(
        name: nameController.text,
        description: descriptionController.text,
        price: double.parse(priceController.text), //phrase
        productImage: productImage!,
        rating: double.parse(ratingController.text),
        style: styleController.text,
      );

      //adding a product to the box
      await productBox.add(product);
      product.save(); // saving a product to the box

      Get.off(() =>
          const HomeScreen()); //navigate back to the home screen after add a product
      Get.snackbar("Success", "Product successfully added",
          backgroundColor: Colors.green,
          colorText: Colors.white); // display a snackbar on success addition
    } catch (e) {
      Get.snackbar("Error", "$e",
          backgroundColor: Colors.red,
          colorText: Colors.white); //Display an error
    }
  }

  // delete a product
  void deleteProduct() async {
    Product product = Product(
      name: nameController.text,
      description: descriptionController.text,
      price: double.parse(priceController.text), //phrase
      productImage: productImage!,
      rating: double.parse(ratingController.text),
      style: styleController.text,
    );
    //delete a product
    await productBox.delete(product);
    product.save();
  }

  void pickImageFile() async {
    isLoading = true;
    // FilePickerResult? pickedImage = await FilePicker.platform.pickFiles();

    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      File pickedImageFile = File(pickedImage.path);
      isLoading = false;
      productImage = await pickedImageFile.readAsBytes(); //convert to bytes

      //update the ui
      update();
    }
  }
}
