import 'package:assigment/data/repositories/food_repository.dart';
import 'package:assigment/domain/usecases/fetch_foodlist_use_case.dart';
import 'package:assigment/presentation/controllers/food/food_controller.dart';
import 'package:get/get.dart';

class FoodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FetchFoodListUseCase(Get.find<FoodRepositoryIml>()));
    Get.lazyPut(() => FoodController(Get.find()));
  }
}
