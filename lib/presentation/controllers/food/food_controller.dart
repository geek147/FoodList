import 'package:assigment/data/models/food_model.dart';
import 'package:assigment/domain/usecases/fetch_foodlist_use_case.dart';
import 'package:get/get.dart';
import 'package:tuple/tuple.dart';

class FoodController extends GetxController {
  FoodController(this._fetchFoodListUseCase);
  final FetchFoodListUseCase _fetchFoodListUseCase;

  var foodList = RxList<FoodModel>([]);

  fetchData(String keyword) async {
    final newData = await _fetchFoodListUseCase.execute();
    foodList.assignAll(newData);
  }
}
