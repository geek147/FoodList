import 'package:assigment/app/core/usecases/no_param_usecase.dart';
import 'package:assigment/data/models/food_model.dart';
import 'package:assigment/domain/repositories/food_repository.dart';

class FetchFoodListUseCase extends NoParamUseCase<List<FoodModel>> {
  final FoodRepository _repo;
  FetchFoodListUseCase(this._repo);

  @override
  Future<List<FoodModel>> execute() {
    return _repo.fetchFoodList();
  }
}
