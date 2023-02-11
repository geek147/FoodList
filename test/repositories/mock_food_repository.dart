import 'dart:io';
import 'package:assigment/data/models/food_model.dart';
import 'package:assigment/domain/repositories/food_repository.dart';
import 'dart:convert';

class MockFoodRepository extends FoodRepository {
  @override
  Future<List<FoodModel>> fetchFoodList() async {
    final file = File('test/data/headline_sample.json');
    final response = await file.readAsString();
    final data = await json.decode(response);
    return [];
  }
}
