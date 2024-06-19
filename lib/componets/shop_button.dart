import 'package:flutter/material.dart';

class ShopButton extends StatelessWidget {
  final String buttonText;
  final Function()? onTap;
  const ShopButton({super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return //button
        Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            // width: 150,
            // height: 50,
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Text(
                buttonText,
                style: const TextStyle(color: Colors.white),
              ),
            )),
      ),
    );
  }
}
