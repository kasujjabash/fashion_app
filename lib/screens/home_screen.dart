// file: lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:myapp/componets/count_down.dart';
import 'package:myapp/componets/fashion_tile.dart';
import 'package:myapp/componets/category_scroll.dart';
import 'package:myapp/componets/my_banner.dart';
import 'package:myapp/componets/search_bar.dart';

import '../module/fasions.dart';
import '../pages/fashion_detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Accessing the fashion item list from the Fashion instance
    final fashionList = Fashion().fashionItem;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 25,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Location
              const SizedBox(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(Icons.location_on),
                    ),
                    Text('Kampala, Uganda'),
                  ],
                ),
              ),

              // Search bar
              const MySearchBar(),

              // Banner
              const MyBanner(),

              // Categories
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Category',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/seeall');
                        },
                        child: const Text(
                          'See All',
                          style: TextStyle(fontSize: 18, color: Colors.brown),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Category scrolling list
              const CategoryScroll(),

              // Flash sale
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Flash Sale',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // Flash sale counter
                  CountDown(
                    endTime: DateTime.now().millisecondsSinceEpoch + 360000000,
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Grid view
              SizedBox(
                height: 400, // Adjust the height as needed
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: fashionList.length,
                  itemBuilder: (context, index) {
                    return FashionTile(
                      onTap: () {
                        // Navigate to details page when tile is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FashionDetails(
                              fashionItem: fashionList[index],
                            ),
                          ),
                        );
                      },
                      fashionItem: fashionList[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
