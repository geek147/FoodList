// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:assigment/domain/usecases/fetch_foodlist_use_case.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tuple/tuple.dart';

import 'repositories/mock_food_repository.dart';

void main() {
  test('Fetch foodList test', () async {
    //Mock data
    final fetchHeadlineUseCase = FetchFoodListUseCase(MockFoodRepository());
    final data = await fetchHeadlineUseCase.execute();

    expect(data.length, 15);
  });
}
