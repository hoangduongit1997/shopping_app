import 'package:flutter/foundation.dart';

enum Category {
  all,
  accessories,
  clothing,
  home,
}

class Product {
  Product({
    @required this.category,
    @required this.id,
    this.isChoose = false,
    @required this.name,
    @required this.price,
  })  : assert(category != null),
        assert(id != null),
        assert(isChoose != null),
        assert(name != null),
        assert(price != null);

  final Category category;
  final int id;
  bool isChoose;
  final String name;
  final int price;
  String get assetName => '$id-0.jpg';
  String get assetPackage => 'shrine_images';

  @override
  String toString() => '$name (id=$id)';
}
