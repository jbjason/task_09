import 'package:flutter/material.dart';
import 'package:task_09/feature/home/data/model/category.dart';
import 'package:task_09/feature/home/data/repository/home_repository.dart';

class HomeProvider with ChangeNotifier {
  final HomeRepository _repository;
  HomeProvider(this._repository);

  final List<Category> _categoryList = [];

  List<Category> get categoryList => List.unmodifiable(_categoryList);

  Future<void> fetchCategories(BuildContext ctx) async {
    try {
      final categories = await _repository.fetchCategories(ctx);
      _categoryList
        ..clear()
        ..addAll(categories);
    } catch (e) {
      debugPrint('Error fetching categories: $e');
    }
  }
}
