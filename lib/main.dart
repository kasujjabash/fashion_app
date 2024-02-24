import 'package:flutter/material.dart';
import 'package:myapp/componets/router.dart';
import 'package:myapp/screens/see_all.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion',
      theme: ThemeData(
        useMaterial3: true,
      ),

      routes: {
        '/seeall':(context) => const SeeAll()
      },
      initialRoute: RouteGenerator.getstartedscreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
