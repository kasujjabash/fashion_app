import 'package:flutter/material.dart';
import 'package:myapp/componets/bottom_navbar.dart';
import 'package:myapp/screens/chat_screen.dart';
import 'package:myapp/screens/favourite_screens.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/profile_screen.dart';
import 'package:myapp/screens/shop_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar
  int _selectedIndex = 0;
  //this method will update our selected index
  //when the user taps on the bottom bar

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _page = [
    //home screen
    const HomeScreen(),
    //shop screen
    const ShopScreen(),
    //favourite
    const FavourateScreen(),
    //chat
    const ChatScreen(),
    // profile
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
