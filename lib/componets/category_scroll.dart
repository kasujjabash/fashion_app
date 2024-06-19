import 'package:flutter/material.dart';

import 'circular_avatar.dart';

class CategoryScroll extends StatelessWidget {
  const CategoryScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // avatar image
          Avatar(
            avatarImagePath: 'assets/images/image_12.jpg',
          ),
          // avatar image
          Avatar(
            avatarImagePath: 'assets/images/image_12.jpg',
          ),
          // avatar image
          Avatar(
            avatarImagePath: 'assets/images/image_12.jpg',
          ),
          // avatar image
          Avatar(
            avatarImagePath: 'assets/images/image_12.jpg',
          ),
          // avatar image
          Avatar(
            avatarImagePath: 'assets/images/image_12.jpg',
          ),
          // avatar image
          Avatar(
            avatarImagePath: 'assets/images/image_12.jpg',
          ),
        ],
      ),
    ));
  }
}
