import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/controllers/product_controller.dart';

import '../componets/form_textfield.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post an Ad'),
      ),
      body: GetBuilder<ProductController>(
          //Getbuild rebuilds the ui widgets whenever there is change in data

          init: ProductController(), //intitaise
          builder: (prodctrl) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  FormTextField(
                    controller: prodctrl.nameController,
                    labelText: 'Name:',
                  ),
                  FormTextField(
                    controller: prodctrl.descriptionController,
                    labelText: 'Description',
                  ),
                  FormTextField(
                    controller: prodctrl.styleController,
                    labelText: 'Style',
                  ),
                  FormTextField(
                    controller: prodctrl.ratingController,
                    labelText: 'Rating',
                  ),
                  FormTextField(
                    controller: prodctrl.priceController,
                    labelText: 'Price',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: double.infinity, // Make container full width
                      height: 300, // Set height as needed
                      color: Colors.grey[200],
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          if (prodctrl.productImage != null)
                            Image.memory(
                              //for images stored as byte, access them with image.memory
                              prodctrl.productImage!,
                              width: double.infinity, // Make image full width
                              height: double.infinity, // Make image full height
                              fit: BoxFit.cover, // Cover the entire container
                            ),
                          if (prodctrl.isLoading)
                            const CircularProgressIndicator(), // Show loading indicator
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            prodctrl.pickImageFile();
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.image_outlined),
                              SizedBox(width: 30),
                              Text('Pick image from gallery')
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        ElevatedButton(
                          onPressed: () {},
                          // => takeImage(context),
                          child: const Row(
                            children: [
                              Icon(Icons.camera_alt_outlined),
                              SizedBox(width: 30),
                              Text('Use camera')
                            ],
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              prodctrl.addProduct();
                            },
                            child: const Text("Submit"))
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
