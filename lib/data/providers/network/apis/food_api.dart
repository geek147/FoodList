import 'package:assigment/data/providers/network/api_endpoint.dart';
import 'package:assigment/data/providers/network/api_provider.dart';
import 'package:assigment/data/providers/network/api_request_representable.dart';

class FoodAPI implements APIRequestRepresentable {
  String? key;
  FoodAPI._({this.key});

  FoodAPI.fetchFoodList() : this._();

  @override
  String get endpoint => APIEndpoint.newsapi;

  @override
  HTTPMethod get method {
    return HTTPMethod.get;
  }

  @override
  get body => null;

  @override
  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => endpoint;

  @override
  Map<String, String>? get headers => {};

  @override
  String get path => '';

  @override
  Map<String, String>? get query => {};
}
