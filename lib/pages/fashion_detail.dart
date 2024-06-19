import 'package:flutter/material.dart';
import 'package:myapp/module/fashion_module.dart';

import '../componets/my_button.dart';
import '../componets/shop_button.dart';

class FashionDetails extends StatelessWidget {
  final FashionItem fashionItem;
  const FashionDetails({super.key, required this.fashionItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.brown.shade600,
        title: const Text(
          "Fashion Details",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //fashion image
          Image.asset(
            fashionItem.imagePath,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //life style + rating
                    Text(
                      fashionItem.style,
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade500),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange.shade300,
                          size: 20,
                        ),
                        Text(
                          fashionItem.rating,
                          style: TextStyle(
                              fontSize: 18, color: Colors.grey.shade500),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //Fashion name
                Text(
                  fashionItem.name,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Description
                    const Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    //prices
                    Text(
                      "Price: \$${fashionItem.price.toString()}",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                //fashon description
                Text(
                  fashionItem.description,
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),

                //fashion price + add to cart button
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(color: Colors.brown.shade800),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //decrease
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(233, 224, 216, 1),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.remove,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                  //sized box
                  const SizedBox(
                    width: 10,
                  ),
                  //Number
                  const Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),

                  //sized box
                  const SizedBox(
                    width: 10,
                  ),
                  //Increase
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.brown.shade400,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              //button to add to cart
              ShopButton(
                buttonText: "Add to cart",
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
