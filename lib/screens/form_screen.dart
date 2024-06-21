import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../componets/form_textfield.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final nameController = TextEditingController();
  final ratingController = TextEditingController();
  final styleController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  final quantityController = TextEditingController();

  File? _pickedImage;
  bool _isImageLoading = false;

  Future<void> pickImage(BuildContext context) async {
    setState(() {
      _isImageLoading = true; // Start loading indicator
    });
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      // If no image is selected, hide loading indicator
      setState(() {
        _isImageLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No image selected!'),
          duration: Duration(seconds: 5),
        ),
      );
    } else {
      setState(() {
        _pickedImage = File(image.path);
        _isImageLoading = false; // Stop loading indicator
      });
    }
  }

  Future<void> takeImage(BuildContext context) async {
    setState(() {
      _isImageLoading = true; // Start loading indicator
    });
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) {
      // If no image is captured, hide loading indicator
      setState(() {
        _isImageLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No image captured!'),
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      setState(() {
        _pickedImage = File(image.path);
        _isImageLoading = false; // Stop loading indicator
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post an Ad'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FormTextField(
              controller: nameController,
              labelText: 'Name:',
            ),
            FormTextField(
              controller: descriptionController,
              labelText: 'Description',
            ),
            FormTextField(
              controller: priceController,
              labelText: 'Style',
            ),
            FormTextField(
              controller: ratingController,
              labelText: 'Rating',
            ),
            const SizedBox(
              width: 10,
            ),
            FormTextField(
              controller: styleController,
              labelText: 'Style:',
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity, // Make container full width
                height: 300, // Set height as needed
                color: Colors.grey[200],
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (_pickedImage != null)
                      Image.file(
                        File(_pickedImage!.path),
                        width: double.infinity, // Make image full width
                        height: double.infinity, // Make image full height
                        fit: BoxFit.cover, // Cover the entire container
                      ),
                    if (_isImageLoading)
                      const CircularProgressIndicator(), // Show loading indicator
                    if (_pickedImage == null && !_isImageLoading)
                      const Icon(Icons.image, size: 50, color: Colors.grey),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () => pickImage(context),
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
                  TextButton(onPressed: () {}, child: const Text("Submit"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
