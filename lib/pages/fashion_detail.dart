import 'package:flutter/material.dart';
import 'package:myapp/componets/Size.dart';
import 'package:myapp/module/fashion_module.dart';
import 'package:myapp/module/hive_modules/product_module.dart';
import '../componets/detail_footer.dart';

class FashionDetails extends StatelessWidget {
  final Product productItem;
  const FashionDetails({super.key, required this.productItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.brown.shade100,
        appBar: AppBar(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.brown.shade600,
          title: const Text(
            "Fashion Details",
            style: TextStyle(color: Colors.white),
          ),
          actions: [],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //fashion image
              Image.memory(
                productItem.productImage,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //life style + rating
                        Text(
                          productItem.style,
                          style: TextStyle(
                              fontSize: 18, color: Colors.grey.shade500),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange.shade300,
                              size: 20,
                            ),
                            Text(
                              productItem.rating.toString(),
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
                      productItem.name,
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
                          "Price: \$${productItem.price.toString()}",
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
                      productItem.description,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    // Select size
                    const Text(
                      "Select Size",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    //Fashion sizes
                    Row(
                      children: [
                        //size S
                        FashionSize(onTap: () {}, size: "S"),
                        //size M
                        FashionSize(onTap: () {}, size: "M"),
                        //size L
                        FashionSize(onTap: () {}, size: "L"),
                        //size S
                        FashionSize(onTap: () {}, size: "XL"),
                        //size XXL
                        FashionSize(onTap: () {}, size: "XXL"),

                        //size XXXL
                        FashionSize(onTap: () {}, size: "XXXL"),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

        // Increase button, Number of items, descrease button, and add to cart button
        bottomNavigationBar: const DetailFooter());
  }
}
