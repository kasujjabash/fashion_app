// file: lib/components/fashion_tile.dart
import 'package:flutter/material.dart';
import '../module/fashion_module.dart';

class FashionTile extends StatelessWidget {
  final Function()? onTap;
  final FashionItem fashionItem;
  const FashionTile(
      {super.key, required this.fashionItem, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    fashionItem.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              // name + rating
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // name of the item
                  Text(
                    fashionItem.name,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),

                  // rating + star icon
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                        size: 18,
                      ),
                      Text(fashionItem.rating)
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              // price
              Text(
                "\$${fashionItem.price}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
