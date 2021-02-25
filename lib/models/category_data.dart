import 'dart:collection';
import 'package:brandon_pos/models/category.dart';
import 'package:flutter/widgets.dart';

class CategoryData extends ChangeNotifier {
  List<CategoryType> _categories = [
    CategoryType(name: "Table"),
    CategoryType(name: "Chair"),
    CategoryType(name: "Wardrobe"),
    CategoryType(name: "Bed"),
    CategoryType(name: "Shelf"),
  ];

  UnmodifiableListView<CategoryType> get categories {
    return UnmodifiableListView(_categories);
  }

  void addCategory(String categoryName) {
    final category = CategoryType(name: categoryName);
    _categories.add(category);
    notifyListeners();
  }

  int get getCount {
    return _categories.length;
  }
}
