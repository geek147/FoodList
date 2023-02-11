import 'package:assigment/data/models/food_model.dart';
import 'package:assigment/data/providers/network/apis/food_api.dart';
import 'package:assigment/domain/repositories/food_repository.dart';

class FoodRepositoryIml extends FoodRepository {
  @override
  Future<List<FoodModel>> fetchFoodList() async {
    final response = await FoodAPI.fetchFoodList().request();
    List<FoodModel> listResult =
        List.from(response).map((e) => FoodModel.fromJson(e)).toList();

    return listResult;
  }
}
