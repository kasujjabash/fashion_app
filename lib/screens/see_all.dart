import 'package:flutter/material.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              //A row of categories
              children: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "All",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Jacket",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Shirt",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Pant",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "T-shirt",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Jampers",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
