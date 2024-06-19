import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNavigation extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavigation({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.black87, borderRadius: BorderRadius.circular(50)),
        child:
            //  Expanded(
            //   child:
            GNav(
                onTabChange: (value) => onTabChange!(value),
                color: Colors.white,
                activeColor: Colors.brown,
                tabActiveBorder: Border.all(
                  color: Colors.white,
                ),
                tabBackgroundColor: Colors.white,
                tabs: const [
              GButton(
                icon: Icons.home,
              ),
              GButton(icon: Icons.shopping_bag_outlined),
              GButton(icon: Icons.favorite),
              GButton(icon: Icons.chat_bubble_outline_rounded),
              GButton(icon: Icons.person_pin),
            ]),
      ),
      // ),
    );
  }
}
