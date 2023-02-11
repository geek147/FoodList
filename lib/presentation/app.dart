import 'package:assigment/presentation/controllers/food/food_binding.dart';
import 'package:assigment/presentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      initialRoute: "/",
      initialBinding: FoodBinding(),
      home: HomePage(),
    );
  }
}
