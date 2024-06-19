import 'package:flutter/material.dart';
import 'package:myapp/pages/get_started_page.dart';
import 'package:myapp/pages/home_page.dart';


class RouteGenerator {
  static const getstartedscreen = "/";
  static const homeScreen = "/homescreen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case getstartedscreen:
        return MaterialPageRoute(builder: (context) => const GetStartedPage());
      case homeScreen:
        return MaterialPageRoute(builder: (context) => const HomePage());

        
      default:
        return MaterialPageRoute(builder: (context) => const GetStartedPage());
    }
  }
}
