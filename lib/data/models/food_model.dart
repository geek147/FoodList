class FoodModel {
  String? name;
  String? image;
  String? desc;

  FoodModel({this.name, this.image, this.desc});

  FoodModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['image'] = image;
    data['desc'] = desc;
    return data;
  }
}
