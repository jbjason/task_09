import 'package:task_09/core/error/safe_parse.dart';

class PopularProduct {
  int totalSize;
  dynamic limit;
  dynamic offset;
  List<Product> products;

  PopularProduct({
    required this.totalSize,
    required this.limit,
    required this.offset,
    required this.products,
  });

  factory PopularProduct.fromJson(Map<String, dynamic> json) => PopularProduct(
    totalSize: safeParse<int>(json["total_size"], 'total_size')!,
    limit: json["limit"],
    offset: json["offset"],
    products: List<Product>.from(
      json["products"].map((x) => Product.fromJson(x)),
    ),
  );
}

class Product {
  int id;
  String name;
  String description;
  String image;
  int categoryId;
  List<CategoryId> categoryIds;
  List<Variation> variations;
  List<AddOn> addOns;
  int price;
  int tax;
  String taxType;
  int discount;
  String discountType;
  String availableTimeStarts;
  String availableTimeEnds;
  int veg;
  int status;
  int restaurantId;
  DateTime createdAt;
  DateTime updatedAt;
  int orderCount;
  double avgRating;
  int ratingCount;
  int recommended;
  String slug;
  dynamic maximumCartQuantity;
  int isHalal;
  int itemStock;
  int sellCount;
  String stockType;
  int tempAvailable;
  int open;
  int reviewsCount;
  String restaurantName;
  int restaurantStatus;
  int restaurantDiscount;
  dynamic restaurantOpeningTime;
  dynamic restaurantClosingTime;
  bool scheduleOrder;
  int minDeliveryTime;
  int maxDeliveryTime;
  int freeDelivery;
  int halalTagStatus;
  List<String> nutritionsName;
  List<String> allergiesName;
  List<Cuisine> cuisines;
  List<dynamic> taxData;
  String imageFullUrl;
  List<Nutrition> nutritions;
  List<Allergy> allergies;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.categoryId,
    required this.categoryIds,
    required this.variations,
    required this.addOns,
    required this.price,
    required this.tax,
    required this.taxType,
    required this.discount,
    required this.discountType,
    required this.availableTimeStarts,
    required this.availableTimeEnds,
    required this.veg,
    required this.status,
    required this.restaurantId,
    required this.createdAt,
    required this.updatedAt,
    required this.orderCount,
    required this.avgRating,
    required this.ratingCount,
    required this.recommended,
    required this.slug,
    required this.maximumCartQuantity,
    required this.isHalal,
    required this.itemStock,
    required this.sellCount,
    required this.stockType,
    required this.tempAvailable,
    required this.open,
    required this.reviewsCount,
    required this.restaurantName,
    required this.restaurantStatus,
    required this.restaurantDiscount,
    required this.restaurantOpeningTime,
    required this.restaurantClosingTime,
    required this.scheduleOrder,
    required this.minDeliveryTime,
    required this.maxDeliveryTime,
    required this.freeDelivery,
    required this.halalTagStatus,
    required this.nutritionsName,
    required this.allergiesName,
    required this.cuisines,
    required this.taxData,
    required this.imageFullUrl,
    required this.nutritions,
    required this.allergies,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: safeParse<int>(json["id"], 'id')!,
    name: safeParse<String>(json["name"], 'name')!,
    description: safeParse<String>(json["description"], 'description')!,
    image: safeParse<String>(json["image"], 'image')!,
    categoryId: safeParse<int>(json["category_id"], 'category_id')!,
    categoryIds: List<CategoryId>.from(
      json["category_ids"].map((x) => CategoryId.fromJson(x)),
    ),
    variations: List<Variation>.from(
      json["variations"].map((x) => Variation.fromJson(x)),
    ),
    addOns: List<AddOn>.from(json["add_ons"].map((x) => AddOn.fromJson(x))),
    price: safeParse<int>(json["price"], 'price')!,
    tax: safeParse<int>(json["tax"], 'tax')!,
    taxType: safeParse<String>(json["tax_type"], 'tax_type')!,
    discount: safeParse<int>(json["discount"], 'discount')!,
    discountType: safeParse<String>(json["discount_type"], 'discount_type')!,
    availableTimeStarts: safeParse<String>(
      json["available_time_starts"],
      'available_time_starts',
    )!,
    availableTimeEnds: safeParse<String>(
      json["available_time_ends"],
      'available_time_ends',
    )!,
    veg: safeParse<int>(json["veg"], 'veg')!,
    status: safeParse<int>(json["status"], 'status')!,
    restaurantId: safeParse<int>(json["restaurant_id"], 'restaurant_id')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
    orderCount: safeParse<int>(json["order_count"], 'order_count')!,
    avgRating: safeParse<double>(json["avg_rating"], 'avg_rating')!,
    ratingCount: safeParse<int>(json["rating_count"], 'rating_count')!,
    recommended: safeParse<int>(json["recommended"], 'recommended')!,
    slug: safeParse<String>(json["slug"], 'slug')!,
    maximumCartQuantity: json["maximum_cart_quantity"],
    isHalal: safeParse<int>(json["is_halal"], 'is_halal')!,
    itemStock: safeParse<int>(json["item_stock"], 'item_stock')!,
    sellCount: safeParse<int>(json["sell_count"], 'sell_count')!,
    stockType: safeParse<String>(json["stock_type"], 'stock_type')!,
    tempAvailable: safeParse<int>(json["temp_available"], 'temp_available')!,
    open: safeParse<int>(json["open"], 'open')!,
    reviewsCount: safeParse<int>(json["reviews_count"], 'reviews_count')!,
    restaurantName: safeParse<String>(
      json["restaurant_name"],
      'restaurant_name',
    )!,
    restaurantStatus: safeParse<int>(
      json["restaurant_status"],
      'restaurant_status',
    )!,
    restaurantDiscount: safeParse<int>(
      json["restaurant_discount"],
      'restaurant_discount',
    )!,
    restaurantOpeningTime: json["restaurant_opening_time"],
    restaurantClosingTime: json["restaurant_closing_time"],
    scheduleOrder: safeParse<bool>(json["schedule_order"], 'schedule_order')!,
    minDeliveryTime: safeParse<int>(
      json["min_delivery_time"],
      'min_delivery_time',
    )!,
    maxDeliveryTime: safeParse<int>(
      json["max_delivery_time"],
      'max_delivery_time',
    )!,
    freeDelivery: safeParse<int>(json["free_delivery"], 'free_delivery')!,
    halalTagStatus: safeParse<int>(
      json["halal_tag_status"],
      'halal_tag_status',
    )!,
    nutritionsName: List<String>.from(
      json["nutritions_name"].map(
        (x) => safeParse<String>(x, 'nutritions_name_element')!,
      ),
    ),
    allergiesName: List<String>.from(
      json["allergies_name"].map(
        (x) => safeParse<String>(x, 'allergies_name_element')!,
      ),
    ),
    cuisines: List<Cuisine>.from(
      json["cuisines"].map((x) => Cuisine.fromJson(x)),
    ),
    taxData: List<dynamic>.from(json["tax_data"].map((x) => x)),
    imageFullUrl: safeParse<String>(json["image_full_url"], 'image_full_url')!,
    nutritions: List<Nutrition>.from(
      json["nutritions"].map((x) => Nutrition.fromJson(x)),
    ),
    allergies: List<Allergy>.from(
      json["allergies"].map((x) => Allergy.fromJson(x)),
    ),
  );
}

class AddOn {
  int id;
  String name;
  int price;
  DateTime createdAt;
  DateTime updatedAt;
  int restaurantId;
  int status;
  String stockType;
  int addonStock;
  int sellCount;
  dynamic addonCategoryId;
  List<dynamic> taxIds;
  List<dynamic> translations;

  AddOn({
    required this.id,
    required this.name,
    required this.price,
    required this.createdAt,
    required this.updatedAt,
    required this.restaurantId,
    required this.status,
    required this.stockType,
    required this.addonStock,
    required this.sellCount,
    required this.addonCategoryId,
    required this.taxIds,
    required this.translations,
  });

  factory AddOn.fromJson(Map<String, dynamic> json) => AddOn(
    id: safeParse<int>(json["id"], 'id')!,
    name: safeParse<String>(json["name"], 'name')!,
    price: safeParse<int>(json["price"], 'price')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
    restaurantId: safeParse<int>(json["restaurant_id"], 'restaurant_id')!,
    status: safeParse<int>(json["status"], 'status')!,
    stockType: safeParse<String>(json["stock_type"], 'stock_type')!,
    addonStock: safeParse<int>(json["addon_stock"], 'addon_stock')!,
    sellCount: safeParse<int>(json["sell_count"], 'sell_count')!,
    addonCategoryId: json["addon_category_id"],
    taxIds: List<dynamic>.from(json["tax_ids"].map((x) => x)),
    translations: List<dynamic>.from(json["translations"].map((x) => x)),
  );
}

class Allergy {
  int id;
  String allergy;
  DateTime createdAt;
  DateTime updatedAt;
  AllergyPivot pivot;

  Allergy({
    required this.id,
    required this.allergy,
    required this.createdAt,
    required this.updatedAt,
    required this.pivot,
  });

  factory Allergy.fromJson(Map<String, dynamic> json) => Allergy(
    id: safeParse<int>(json["id"], 'id')!,
    allergy: safeParse<String>(json["allergy"], 'allergy')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
    pivot: AllergyPivot.fromJson(json["pivot"]),
  );
}

class AllergyPivot {
  int foodId;
  int allergyId;

  AllergyPivot({required this.foodId, required this.allergyId});

  factory AllergyPivot.fromJson(Map<String, dynamic> json) => AllergyPivot(
    foodId: safeParse<int>(json["food_id"], 'food_id')!,
    allergyId: safeParse<int>(json["allergy_id"], 'allergy_id')!,
  );
}

class CategoryId {
  String id;
  int position;
  String categoryName;

  CategoryId({
    required this.id,
    required this.position,
    required this.categoryName,
  });

  factory CategoryId.fromJson(Map<String, dynamic> json) => CategoryId(
    id: safeParse<String>(json["id"], 'id')!,
    position: safeParse<int>(json["position"], 'position')!,
    categoryName: safeParse<String>(json["category_name"], 'category_name')!,
  );
}

class Cuisine {
  int id;
  String name;
  String image;

  Cuisine({required this.id, required this.name, required this.image});

  factory Cuisine.fromJson(Map<String, dynamic> json) => Cuisine(
    id: safeParse<int>(json["id"], 'id')!,
    name: safeParse<String>(json["name"], 'name')!,
    image: safeParse<String>(json["image"], 'image')!,
  );
}

class Nutrition {
  int id;
  String nutrition;
  DateTime createdAt;
  DateTime updatedAt;
  NutritionPivot pivot;

  Nutrition({
    required this.id,
    required this.nutrition,
    required this.createdAt,
    required this.updatedAt,
    required this.pivot,
  });

  factory Nutrition.fromJson(Map<String, dynamic> json) => Nutrition(
    id: safeParse<int>(json["id"], 'id')!,
    nutrition: safeParse<String>(json["nutrition"], 'nutrition')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
    pivot: NutritionPivot.fromJson(json["pivot"]),
  );
}

class NutritionPivot {
  int foodId;
  int nutritionId;

  NutritionPivot({required this.foodId, required this.nutritionId});

  factory NutritionPivot.fromJson(Map<String, dynamic> json) => NutritionPivot(
    foodId: safeParse<int>(json["food_id"], 'food_id')!,
    nutritionId: safeParse<int>(json["nutrition_id"], 'nutrition_id')!,
  );
}

class Variation {
  int? variationId;
  String name;
  String type;
  String min;
  String max;
  String required;
  List<Value> values;

  Variation({
    required this.variationId,
    required this.name,
    required this.type,
    required this.min,
    required this.max,
    required this.required,
    required this.values,
  });

  factory Variation.fromJson(Map<String, dynamic> json) => Variation(
    variationId:
        json["variation_id"], // safeParse<int?>(json["variation_id"], 'variation_id')!,
    name: safeParse<String>(json["name"], 'name')!,
    type: safeParse<String>(json["type"], 'type')!,
    min: safeParse<String>(json["min"], 'min')!,
    max: safeParse<String>(json["max"], 'max')!,
    required: safeParse<String>(json["required"], 'required')!,
    values: List<Value>.from(json["values"].map((x) => Value.fromJson(x))),
  );
}

class Value {
  String label;
  int optionPrice;
  String totalStock;
  String stockType;
  String sellCount;
  int? optionId;
  int? currentStock;

  Value({
    required this.label,
    required this.optionPrice,
    required this.totalStock,
    required this.stockType,
    required this.sellCount,
    required this.optionId,
    required this.currentStock,
  });

  factory Value.fromJson(Map<String, dynamic> json) => Value(
    label: safeParse<String>(json["label"], 'label')!,
    optionPrice: safeParse<int>(json["optionPrice"], 'optionPrice')!,
    totalStock: safeParse<String>(json["total_stock"], 'total_stock')!,
    stockType: safeParse<String>(json["stock_type"], 'stock_type')!,
    sellCount: safeParse<String>(json["sell_count"], 'sell_count')!,
    optionId:
        json["option_id"], // safeParse<int?>(json["option_id"], 'option_id')!,
    currentStock:
        json["current_stock"], // safeParse<int?>(json["current_stock"], 'current_stock')!,
  );
}
