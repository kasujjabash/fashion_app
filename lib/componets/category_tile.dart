import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      //coved image
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          'assets/images/image_9.jpg',
          fit: BoxFit.cover,
          // height: 20,
          // width: 20,
        ),
      ),
    );
  }
}
