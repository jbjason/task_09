import 'package:flutter/material.dart';
import 'package:task_09/feature/home/data/model/category.dart';
import 'package:task_09/feature/home/data/model/food_campaign.dart';
import 'package:task_09/feature/home/data/model/home_banner.dart';
import 'package:task_09/feature/home/data/model/home_restaurant.dart';
import 'package:task_09/feature/home/data/model/popular_product.dart';
import 'package:task_09/feature/home/data/repository/home_repository.dart';

class HomeProvider with ChangeNotifier {
  final HomeRepository _repository;
  HomeProvider(this._repository);

  final List<Category> _categoryList = [];
  final List<HomeBanner> _bannerList = [];
  final List<FoodCampaign> _foodCampaignList = [];
  PopularProduct? _popularProduct;
  HomeRestaurant? _homeRestaurant;

  List<Category> get categoryList => List.unmodifiable(_categoryList);
  List<HomeBanner> get bannerList => List.unmodifiable(_bannerList);
  List<FoodCampaign> get foodCampaignList =>
      List.unmodifiable(_foodCampaignList);
  PopularProduct? get popularItem => _popularProduct;
  HomeRestaurant? get homeRestaurant => _homeRestaurant;
  double d = 5.toDouble();

  Future<void> fetchCategories(BuildContext ctx) async {
    try {
      final categories = await _repository.fetchCategories(ctx);
      _categoryList
        ..clear()
        ..addAll(categories);

      notifyListeners();
    } catch (e) {
      debugPrint('Error Parsing categories: $e');
    }
  }

  Future<void> fetchBanners(BuildContext ctx) async {
    try {
      final banners = await _repository.fetchBanners(ctx);
      _bannerList
        ..clear()
        ..addAll(banners);
      notifyListeners();
    } catch (e) {
      debugPrint('Error Parsing Banners: $e');
    }
  }

  Future<void> fetchFoodCampaigns(BuildContext ctx) async {
    try {
      final foodCampaignList = await _repository.fetchFoodCampaigns(ctx);
      _foodCampaignList
        ..clear()
        ..addAll(foodCampaignList);
      notifyListeners();
    } catch (e) {
      debugPrint('Error Parsing Food Campaigns: $e');
    }
  }

  Future<void> fetchPopularProduct(BuildContext ctx) async {
    try {
      final popularProduct = await _repository.fetchPopularProduct(ctx);
      _popularProduct = popularProduct;
      notifyListeners();
    } catch (e) {
      debugPrint('Error Parsing Popular Product: $e');
    }
  }

  Future<void> fetchHomeRestaurant({
    int offset = 1,
    int limit = 10,
    required BuildContext ctx,
  }) async {
    try {
      final homeRestaurant = await _repository.fetchHomeRestaurant(
        offset: offset,
        limit: limit,
        ctx: ctx,
      );
      _homeRestaurant = homeRestaurant;
      notifyListeners();
    } catch (e) {
      debugPrint('Error Parsing Home Restaturant: $e');
    }
  }
}
