// file: lib/components/fashion_tile.dart
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/module/hive_modules/product_module.dart';

class FashionTile extends StatelessWidget {
  // final Function()? onTap;
  final Product productItem;
  const FashionTile({
    super.key,
    required this.productItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                child: Image.memory(
                  productItem.productImage,
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
                  productItem.name,
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
                    Text(productItem.rating.toString())
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                // price
                Text(
                  "\$${productItem.price}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),

                // GestureDetector(
                //     onTap: () {
                //       productItem.delete();
                //     },
                //     child: Icon(Icons.delete))
              ],
            )
          ],
        ),
      ),
    );
  }
}
