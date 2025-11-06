import 'package:flutter/material.dart';
import 'package:task_09/core/base/base_client.dart';
import 'package:task_09/core/constants/my_api_url.dart';
import 'package:task_09/feature/home/data/model/category.dart';

class HomeRepository {
  Future<List<Category>> fetchCategories(BuildContext ctx) async {
    final result = await BaseClient.getData(
      endPoint: MyApiUrl.category,
      ctx: ctx,
    );
    if (result == null) return [];
    return result.map<Category>((e) => Category.fromJson(e)).toList();
  }
}
