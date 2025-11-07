import 'package:task_09/core/error/safe_parse.dart';

class FoodCampaign {
  int id;
  String image;
  String description;
  int status;
  int adminId;
  dynamic categoryId;
  List<CategoryId> categoryIds;
  List<Variation> variations;
  List<AddOn> addOns;
  String attributes;
  String choiceOptions;
  int price;
  int tax;
  String taxType;
  int discount;
  String discountType;
  int restaurantId;
  DateTime createdAt;
  DateTime updatedAt;
  int veg;
  dynamic slug;
  dynamic maximumCartQuantity;
  int tempAvailable;
  int open;
  String name;
  String availableTimeStarts;
  String availableTimeEnds;
  DateTime availableDateStarts;
  DateTime availableDateEnds;
  int recommended;
  dynamic tags;
  String restaurantName;
  int restaurantStatus;
  int restaurantDiscount;
  String restaurantOpeningTime;
  String restaurantClosingTime;
  bool scheduleOrder;
  int ratingCount;
  int avgRating;
  int minDeliveryTime;
  int maxDeliveryTime;
  int freeDelivery;
  int halalTagStatus;
  dynamic nutritionsName;
  dynamic allergiesName;
  List<dynamic> cuisines;
  List<dynamic> taxData;
  String imageFullUrl;
  List<Translation> translations;
  List<Storage> storage;

  FoodCampaign({
    required this.id,
    required this.image,
    required this.description,
    required this.status,
    required this.adminId,
    required this.categoryId,
    required this.categoryIds,
    required this.variations,
    required this.addOns,
    required this.attributes,
    required this.choiceOptions,
    required this.price,
    required this.tax,
    required this.taxType,
    required this.discount,
    required this.discountType,
    required this.restaurantId,
    required this.createdAt,
    required this.updatedAt,
    required this.veg,
    required this.slug,
    required this.maximumCartQuantity,
    required this.tempAvailable,
    required this.open,
    required this.name,
    required this.availableTimeStarts,
    required this.availableTimeEnds,
    required this.availableDateStarts,
    required this.availableDateEnds,
    required this.recommended,
    required this.tags,
    required this.restaurantName,
    required this.restaurantStatus,
    required this.restaurantDiscount,
    required this.restaurantOpeningTime,
    required this.restaurantClosingTime,
    required this.scheduleOrder,
    required this.ratingCount,
    required this.avgRating,
    required this.minDeliveryTime,
    required this.maxDeliveryTime,
    required this.freeDelivery,
    required this.halalTagStatus,
    required this.nutritionsName,
    required this.allergiesName,
    required this.cuisines,
    required this.taxData,
    required this.imageFullUrl,
    required this.translations,
    required this.storage,
  });

  factory FoodCampaign.fromJson(Map<String, dynamic> json) => FoodCampaign(
    id: safeParse<int>(json["id"], 'id')!,
    image: safeParse<String>(json["image"], 'image')!,
    description: safeParse<String>(json["description"], 'description')!,
    status: safeParse<int>(json["status"], 'status')!,
    adminId: safeParse<int>(json["admin_id"], 'admin_id')!,
    categoryId: json["category_id"],
    categoryIds: List<CategoryId>.from(
      json["category_ids"].map((x) => CategoryId.fromJson(x)),
    ),
    variations: List<Variation>.from(
      json["variations"].map((x) => Variation.fromJson(x)),
    ),
    addOns: List<AddOn>.from(json["add_ons"].map((x) => AddOn.fromJson(x))),
    attributes: safeParse<String>(json["attributes"], 'attributes')!,
    choiceOptions: safeParse<String>(json["choice_options"], 'choice_options')!,
    price: safeParse<int>(json["price"], 'price')!,
    tax: safeParse<int>(json["tax"], 'tax')!,
    taxType: safeParse<String>(json["tax_type"], 'tax_type')!,
    discount: safeParse<int>(json["discount"], 'discount')!,
    discountType: safeParse<String>(json["discount_type"], 'discount_type')!,
    restaurantId: safeParse<int>(json["restaurant_id"], 'restaurant_id')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
    veg: safeParse<int>(json["veg"], 'veg')!,
    slug: json["slug"],
    maximumCartQuantity: json["maximum_cart_quantity"],
    tempAvailable: safeParse<int>(json["temp_available"], 'temp_available')!,
    open: safeParse<int>(json["open"], 'open')!,
    name: safeParse<String>(json["name"], 'name')!,
    availableTimeStarts: safeParse<String>(
      json["available_time_starts"],
      'available_time_starts',
    )!,
    availableTimeEnds: safeParse<String>(
      json["available_time_ends"],
      'available_time_ends',
    )!,
    availableDateStarts: DateTime.parse(
      safeParse<String>(
        json["available_date_starts"],
        'available_date_starts',
      )!,
    ),
    availableDateEnds: DateTime.parse(
      safeParse<String>(json["available_date_ends"], 'available_date_ends')!,
    ),
    recommended: safeParse<int>(json["recommended"], 'recommended')!,
    tags: json["tags"],
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
    restaurantOpeningTime: safeParse<String>(
      json["restaurant_opening_time"],
      'restaurant_opening_time',
    )!,
    restaurantClosingTime: safeParse<String>(
      json["restaurant_closing_time"],
      'restaurant_closing_time',
    )!,
    scheduleOrder: safeParse<bool>(json["schedule_order"], 'schedule_order')!,
    ratingCount: safeParse<int>(json["rating_count"], 'rating_count')!,
    avgRating: safeParse<int>(json["avg_rating"], 'avg_rating')!,
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
    nutritionsName: json["nutritions_name"],
    allergiesName: json["allergies_name"],
    cuisines: List<dynamic>.from(json["cuisines"].map((x) => x)),
    taxData: List<dynamic>.from(json["tax_data"].map((x) => x)),
    imageFullUrl: safeParse<String>(json["image_full_url"], 'image_full_url')!,
    translations: List<Translation>.from(
      json["translations"].map((x) => Translation.fromJson(x)),
    ),
    storage: List<Storage>.from(
      json["storage"].map((x) => Storage.fromJson(x)),
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

class Storage {
  int id;
  String dataType;
  String dataId;
  String key;
  String value;
  DateTime createdAt;
  DateTime updatedAt;

  Storage({
    required this.id,
    required this.dataType,
    required this.dataId,
    required this.key,
    required this.value,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Storage.fromJson(Map<String, dynamic> json) => Storage(
    id: safeParse<int>(json["id"], 'id')!,
    dataType: safeParse<String>(json["data_type"], 'data_type')!,
    dataId: safeParse<String>(json["data_id"], 'data_id')!,
    key: safeParse<String>(json["key"], 'key')!,
    value: safeParse<String>(json["value"], 'value')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
  );
}

class Translation {
  int id;
  String translationableType;
  int translationableId;
  String locale;
  String key;
  String value;
  dynamic createdAt;
  dynamic updatedAt;

  Translation({
    required this.id,
    required this.translationableType,
    required this.translationableId,
    required this.locale,
    required this.key,
    required this.value,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
    id: safeParse<int>(json["id"], 'id')!,
    translationableType: safeParse<String>(
      json["translationable_type"],
      'translationable_type',
    )!,
    translationableId: safeParse<int>(
      json["translationable_id"],
      'translationable_id',
    )!,
    locale: safeParse<String>(json["locale"], 'locale')!,
    key: safeParse<String>(json["key"], 'key')!,
    value: safeParse<String>(json["value"], 'value')!,
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );
}

class Variation {
  String name;
  String type;
  int min;
  int max;
  String required;
  List<Value> values;

  Variation({
    required this.name,
    required this.type,
    required this.min,
    required this.max,
    required this.required,
    required this.values,
  });

  factory Variation.fromJson(Map<String, dynamic> json) => Variation(
    name: safeParse<String>(json["name"], 'name')!,
    type: safeParse<String>(json["type"], 'type')!,
    min: safeParse<int>(json["min"], 'min')!,
    max: safeParse<int>(json["max"], 'max')!,
    required: safeParse<String>(json["required"], 'required')!,
    values: List<Value>.from(json["values"].map((x) => Value.fromJson(x))),
  );
}

class Value {
  String label;
  String optionPrice;

  Value({required this.label, required this.optionPrice});

  factory Value.fromJson(Map<String, dynamic> json) => Value(
    label: safeParse<String>(json["label"], 'label')!,
    optionPrice: safeParse<String>(json["optionPrice"], 'optionPrice')!,
  );
}
