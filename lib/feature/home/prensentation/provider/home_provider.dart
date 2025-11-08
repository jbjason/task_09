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

  bool _isLoadingCategory = false;
  bool _isLoadingBanners = false;
  bool _isLoadingCampaign = false;
  bool _isLoadingPopular = false;
  bool _isLoadingRestaurant = false;

  bool get isLoadingCategory => _isLoadingCategory;
  bool get isLoadingBanners => _isLoadingBanners;
  bool get isLoadingCampaign => _isLoadingCampaign;
  bool get isLoadingPopular => _isLoadingPopular;
  bool get isLoadingRestaurant => _isLoadingRestaurant;

  Future<void> fetchCategories(BuildContext ctx) async {
    _isLoadingCategory = true;
    notifyListeners();
    try {
      final categories = await _repository.fetchCategories(ctx);
      _categoryList
        ..clear()
        ..addAll(categories);
    } catch (e) {
      debugPrint('Error Parsing categories: $e');
    } finally {
      _isLoadingCategory = false;
      notifyListeners();
    }
  }

  Future<void> fetchBanners(BuildContext ctx) async {
    _isLoadingBanners = true;
    notifyListeners();
    try {
      final banners = await _repository.fetchBanners(ctx);
      _bannerList
        ..clear()
        ..addAll(banners);
    } catch (e) {
      debugPrint('Error Parsing Banners: $e');
    } finally {
      _isLoadingBanners = false;
      notifyListeners();
    }
  }

  Future<void> fetchFoodCampaigns(BuildContext ctx) async {
    _isLoadingCampaign = true;
    notifyListeners();
    try {
      final foodCampaignList = await _repository.fetchFoodCampaigns(ctx);
      _foodCampaignList
        ..clear()
        ..addAll(foodCampaignList);
    } catch (e) {
      debugPrint('Error Parsing Food Campaigns: $e');
    } finally {
      _isLoadingCampaign = false;
      notifyListeners();
    }
  }

  Future<void> fetchPopularProduct(BuildContext ctx) async {
    _isLoadingPopular = true;
    notifyListeners();
    try {
      final popularProduct = await _repository.fetchPopularProduct(ctx);
      _popularProduct = popularProduct;
    } catch (e) {
      debugPrint('Error Parsing Popular Product: $e');
    } finally {
      _isLoadingPopular = false;
      notifyListeners();
    }
  }

  Future<void> fetchHomeRestaurant({
    int offset = 1,
    int limit = 10,
    required BuildContext ctx,
  }) async {
    _isLoadingRestaurant = true;
    notifyListeners();
    try {
      final homeRestaurant = await _repository.fetchHomeRestaurant(
        offset: offset,
        limit: limit,
        ctx: ctx,
      );
      _homeRestaurant = homeRestaurant;
    } catch (e) {
      debugPrint('Error Parsing Home Restaturant: $e');
    } finally {
      _isLoadingRestaurant = false;
      notifyListeners();
    }
  }
}
