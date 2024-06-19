import 'package:flutter/material.dart';

import '../fashion_pages/jampers.dart';
import '../fashion_pages/mens_shoes.dart';
import '../fashion_pages/shoes.dart';
import '../fashion_pages/tshirts.dart';
import '../fashion_pages/womens_bag.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "All products",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  "Jampers",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  "Shoes",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  "T-shirts",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  "Women bags",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  "Men shoes",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [Jampers(), Shoes(), Tshirts(), WomensBag(), MenShoes()],
        ),
      ),
    );
  }
}
