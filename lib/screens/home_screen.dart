import 'package:flutter/material.dart';
import 'package:myapp/componets/count_down.dart';
import 'package:myapp/componets/fashion_tile.dart';
import 'package:myapp/componets/module/fashion_module.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List fashionList = [
    fashionItems(
        name: 'Brown court',
        price: "200",
        imagePath: 'assets/images/women_fashion.jpg',
        rating: "4.5"),
    fashionItems(
        name: 'Black court',
        price: "220",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                style: const TextStyle(fontSize: 10),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.brown),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: const OutlineInputBorder(),
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),

            //banner
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(233, 224, 216, 1),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        //discription text - banner
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            'New Collection',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        //discription text - banner
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          child: Text(
                            'Discount 50% for\nthe first Transaction',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),

                        //button
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          child: Container(
                              // width: 150,
                              // height: 50,
                              decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 10),
                                child: Text(
                                  'Shop Now',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/no_bg.png',
                          width: 100,
                          height: 200,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            //categories
            SizedBox(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Category',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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

            // Ascrolling list for images
            SizedBox(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      //coved image
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/images/image_12.jpg',
                          fit: BoxFit.cover,
                          // height: 20,
                          // width: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      //coved image
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/images/image_12.jpg',
                          fit: BoxFit.cover,
                          // height: 20,
                          // width: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      //coved image
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/images/image_12.jpg',
                          fit: BoxFit.cover,
                          // height: 20,
                          // width: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      //coved image
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/images/image_12.jpg',
                          fit: BoxFit.cover,
                          // height: 20,
                          // width: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
            //flash sale
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Flash Sale',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(233, 224, 216, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CountDown(
                        endTime:
                            DateTime.now().millisecondsSinceEpoch + 360000000,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // grid
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: fashionList.length,
                itemBuilder: (context, index) =>
                    FashionTile(fashion: fashionList[index]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
