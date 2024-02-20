import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("profile"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: Colors.grey,
            constraints: const BoxConstraints.expand(height: 300),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text("Hello world...."),
            ),
          ))
        ],
      )),
    );
  }
}
