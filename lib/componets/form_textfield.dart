import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;

  const FormTextField(
      {super.key, required this.labelText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            labelText: labelText, labelStyle: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
