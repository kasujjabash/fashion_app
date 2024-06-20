import 'package:flutter/material.dart';

class FashionSize extends StatelessWidget {
  final String size;
  final Function()? onTap;
  const FashionSize({super.key, required this.size, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
          right: 10,
        ),
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.grey.shade100,
              border: Border.all(color: Colors.grey)),
          child: Text(size),
        ),
      ),
    );
  }
}
