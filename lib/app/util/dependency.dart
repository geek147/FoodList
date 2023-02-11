import 'package:assigment/data/repositories/food_repository.dart';
import 'package:get/get.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut(() => FoodRepositoryIml());
  }
}
