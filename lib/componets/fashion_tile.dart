import 'package:flutter/material.dart';
import '../module/fashion_module.dart';

class FashionTile extends StatelessWidget {
  final FashionItem fashionItem;
  const FashionTile(fashionList, {super.key, required this.fashionItem,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                fashionItem.imagePath,
                // // height: 180,
                // // width: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //name + rating
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //name of the item
                Text(
                  fashionItem.name,
                  style: const TextStyle(fontSize: 15),
                ),

                //rating + star icon
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
          ),
          //price
          Text(
            "\$${fashionItem.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
