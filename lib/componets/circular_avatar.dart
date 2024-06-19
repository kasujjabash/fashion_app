import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String avatarImagePath;
  const Avatar({super.key, required this.avatarImagePath});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(avatarImagePath),
      ),
    );
  }
}
