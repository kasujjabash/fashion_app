import 'package:flutter/material.dart';
import 'package:myapp/componets/count_down.dart';
import 'package:myapp/componets/fashion_tile.dart';

import '../componets/category_scroll.dart';
import '../componets/my_banner.dart';
import '../componets/search_bar.dart';
import '../module/fashion_module.dart';

class HomeScreen extends StatefulWidget {
  // final Fashion fashion;
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // fashion item list
  List fashionList = [
    FashionItem(
        name: 'Brown court',
        price: 200,
        imagePath: 'assets/images/women_fashion.jpg',
        rating: "4.5"),
    FashionItem(
        name: 'Black court',
        price: 220,
        imagePath: 'assets/images/men_fashion.jpg',
        rating: "4.9"),
  ];

  @override
  Widget build(BuildContext context) {
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
              // new york
              const SizedBox(
                  child: Row(children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Icon(Icons.location_on),
                ),
                Text(
                  'Kampala, Uganda',
                ),
              ])),

              //search bar
              const MySearchBar(),

              //banner
              const MyBanner(),
              //categories
              SizedBox(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Category',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                          ))),
                ],
              )),

              // category scrolling list
              const CategoryScroll(),
              //flash sale
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
                  //flash sell counter
                  CountDown(
                    endTime: DateTime.now().millisecondsSinceEpoch + 360000000,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // grid
              SizedBox(
                height: 400, // Adjust the height as needed
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: fashionList.length,
                    itemBuilder: (context, index) {
                      return FashionTile(
                        fashionList[index],
                        fashionItem: fashionList[index],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
