import 'package:assigment/data/models/food_model.dart';

abstract class FoodRepository {
  Future<List<FoodModel>> fetchFoodList();
}
