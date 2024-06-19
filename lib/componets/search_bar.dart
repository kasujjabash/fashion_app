import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        
        style: const TextStyle(fontSize: 10),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.brown),
            borderRadius: BorderRadius.circular(20),
          ),
          prefixIcon: const Icon(Icons.search),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Search',
          hintStyle: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
