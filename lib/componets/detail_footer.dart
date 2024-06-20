import 'package:flutter/material.dart';

import 'shop_button.dart';

class DetailFooter extends StatelessWidget {
  const DetailFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
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
      );
  }
}