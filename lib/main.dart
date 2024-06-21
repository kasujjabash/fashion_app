import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myapp/componets/router.dart';
import 'package:myapp/constants/hive_box_constants.dart';
import 'package:myapp/module/hive_modules/product_module.dart';
import 'package:myapp/module/hive_modules/user_module.dart';
import 'package:myapp/screens/see_all.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<Product>(ProductAdapter());
  Hive.registerAdapter<User>(UserAdapter());
  userBox = await Hive.openBox("users");
  productBox = await Hive.openBox("products");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion',
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {'/seeall': (context) => const SeeAll()},
      initialRoute: RouteGenerator.getstartedscreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
