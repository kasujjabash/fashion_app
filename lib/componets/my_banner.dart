import 'package:flutter/material.dart';
import 'package:myapp/screens/see_all.dart';

import 'shop_button.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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

                ShopButton(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>const SeeAll())),
                  buttonText: 'Shop Now',
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
    );
  }
}
