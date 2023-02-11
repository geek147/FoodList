import 'package:assigment/presentation/controllers/food/food_controller.dart';
import 'package:assigment/presentation/pages/detail/detail_page.dart';
import 'package:assigment/presentation/pages/home/widget/food_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final FoodController foodController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetX(
      init: foodController,
      initState: (state) {
        foodController.fetchData('');
      },
      builder: (_) {
        return CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text('Food'),
          ),
          child: ListView.builder(
            itemCount: foodController.foodList.length,
            itemBuilder: (context, index) {
              final item = foodController.foodList[index];
              return GestureDetector(
                onTap: () {
                  Get.to(() => DetailPage(foodModel: item));
                },
                child: FoodItem(foodModel: item),
              );
            },
          ),
        );
      },
    );
  }
}
