import 'package:task_09/core/error/safe_parse.dart';

class HomeRestaurant {
  String filterData;
  int totalSize;
  String limit;
  String offset;
  List<RestaurantElement> restaurants;

  HomeRestaurant({
    required this.filterData,
    required this.totalSize,
    required this.limit,
    required this.offset,
    required this.restaurants,
  });

  factory HomeRestaurant.fromJson(Map<String, dynamic> json) => HomeRestaurant(
    filterData: safeParse<String>(json["filter_data"], 'filter_data')!,
    totalSize: safeParse<int>(json["total_size"], 'total_size')!,
    limit: safeParse<String>(json["limit"], 'limit')!,
    offset: safeParse<String>(json["offset"], 'offset')!,
    restaurants: List<RestaurantElement>.from(
      json["restaurants"].map((x) => RestaurantElement.fromJson(x)),
    ),
  );
}

class RestaurantElement {
  int id;
  String name;
  String phone;
  String email;
  String logo;
  String latitude;
  String longitude;
  String address;
  dynamic footerText;
  int minimumOrder;
  dynamic comission;
  bool scheduleOrder;
  dynamic openingTime;
  dynamic closeingTime;
  int status;
  int vendorId;
  DateTime createdAt;
  DateTime updatedAt;
  bool freeDelivery;
  String coverPhoto;
  bool delivery;
  bool takeAway;
  bool foodSection;
  int tax;
  int zoneId;
  bool reviewsSection;
  bool active;
  String offDay;
  int selfDeliverySystem;
  bool posSystem;
  int minimumShippingCharge;
  String deliveryTime;
  int veg;
  int nonVeg;
  int orderCount;
  int totalOrder;
  dynamic perKmShippingCharge;
  String restaurantModel;
  dynamic maximumShippingCharge;
  String slug;
  bool orderSubscriptionActive;
  bool cutlery;
  dynamic metaTitle;
  dynamic metaDescription;
  dynamic metaImage;
  int announcement;
  String announcementMessage;
  dynamic qrCode;
  dynamic additionalData;
  String additionalDocuments;
  dynamic packageId;
  dynamic tin;
  dynamic tinExpireDate;
  dynamic tinCertificateImage;
  int open;
  double distance;
  int foodsCount;
  int reviewsCommentsCount;
  List<Food> foods;
  int priceStartsFrom;
  List<dynamic> coupons;
  String deliveryFee;
  int restaurantStatus;
  List<dynamic> cuisine;
  List<dynamic> ratings;
  int avgRating;
  int ratingCount;
  int positiveRating;
  int customerOrderDate;
  bool customerDateOrderSratus;
  bool instantOrder;
  bool halalTagStatus;
  String currentOpeningTime;
  bool isExtraPackagingActive;
  bool extraPackagingStatus;
  int extraPackagingAmount;
  bool isDineInActive;
  bool canEditOrder;
  int scheduleAdvanceDineInBookingDuration;
  String scheduleAdvanceDineInBookingDurationTimeFormat;
  List<dynamic> characteristics;
  bool gstStatus;
  String gstCode;
  bool freeDeliveryDistanceStatus;
  String freeDeliveryDistanceValue;
  String logoFullUrl;
  String coverPhotoFullUrl;
  dynamic metaImageFullUrl;
  dynamic tinCertificateImageFullUrl;
  dynamic discount;

  RestaurantElement({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.logo,
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.footerText,
    required this.minimumOrder,
    required this.comission,
    required this.scheduleOrder,
    required this.openingTime,
    required this.closeingTime,
    required this.status,
    required this.vendorId,
    required this.createdAt,
    required this.updatedAt,
    required this.freeDelivery,
    required this.coverPhoto,
    required this.delivery,
    required this.takeAway,
    required this.foodSection,
    required this.tax,
    required this.zoneId,
    required this.reviewsSection,
    required this.active,
    required this.offDay,
    required this.selfDeliverySystem,
    required this.posSystem,
    required this.minimumShippingCharge,
    required this.deliveryTime,
    required this.veg,
    required this.nonVeg,
    required this.orderCount,
    required this.totalOrder,
    required this.perKmShippingCharge,
    required this.restaurantModel,
    required this.maximumShippingCharge,
    required this.slug,
    required this.orderSubscriptionActive,
    required this.cutlery,
    required this.metaTitle,
    required this.metaDescription,
    required this.metaImage,
    required this.announcement,
    required this.announcementMessage,
    required this.qrCode,
    required this.additionalData,
    required this.additionalDocuments,
    required this.packageId,
    required this.tin,
    required this.tinExpireDate,
    required this.tinCertificateImage,
    required this.open,
    required this.distance,
    required this.foodsCount,
    required this.reviewsCommentsCount,
    required this.foods,
    required this.priceStartsFrom,
    required this.coupons,
    required this.deliveryFee,
    required this.restaurantStatus,
    required this.cuisine,
    required this.ratings,
    required this.avgRating,
    required this.ratingCount,
    required this.positiveRating,
    required this.customerOrderDate,
    required this.customerDateOrderSratus,
    required this.instantOrder,
    required this.halalTagStatus,
    required this.currentOpeningTime,
    required this.isExtraPackagingActive,
    required this.extraPackagingStatus,
    required this.extraPackagingAmount,
    required this.isDineInActive,
    required this.canEditOrder,
    required this.scheduleAdvanceDineInBookingDuration,
    required this.scheduleAdvanceDineInBookingDurationTimeFormat,
    required this.characteristics,
    required this.gstStatus,
    required this.gstCode,
    required this.freeDeliveryDistanceStatus,
    required this.freeDeliveryDistanceValue,
    required this.logoFullUrl,
    required this.coverPhotoFullUrl,
    required this.metaImageFullUrl,
    required this.tinCertificateImageFullUrl,
    required this.discount,
  });

  factory RestaurantElement.fromJson(
    Map<String, dynamic> json,
  ) => RestaurantElement(
    id: safeParse<int>(json["id"], 'id')!,
    name: safeParse<String>(json["name"], 'name')!,
    phone: safeParse<String>(json["phone"], 'phone')!,
    email: safeParse<String>(json["email"], 'email')!,
    logo: safeParse<String>(json["logo"], 'logo')!,
    latitude: safeParse<String>(json["latitude"], 'latitude')!,
    longitude: safeParse<String>(json["longitude"], 'longitude')!,
    address: safeParse<String>(json["address"], 'address')!,
    footerText: json["footer_text"],
    minimumOrder: safeParse<int>(json["minimum_order"], 'minimum_order')!,
    comission: json["comission"],
    scheduleOrder: safeParse<bool>(json["schedule_order"], 'schedule_order')!,
    openingTime: json["opening_time"],
    closeingTime: json["closeing_time"],
    status: safeParse<int>(json["status"], 'status')!,
    vendorId: safeParse<int>(json["vendor_id"], 'vendor_id')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
    freeDelivery: safeParse<bool>(json["free_delivery"], 'free_delivery')!,
    coverPhoto: safeParse<String>(json["cover_photo"], 'cover_photo')!,
    delivery: safeParse<bool>(json["delivery"], 'delivery')!,
    takeAway: safeParse<bool>(json["take_away"], 'take_away')!,
    foodSection: safeParse<bool>(json["food_section"], 'food_section')!,
    tax: safeParse<int>(json["tax"].toInt(), 'tax')!,
    zoneId: safeParse<int>(json["zone_id"], 'zone_id')!,
    reviewsSection: safeParse<bool>(
      json["reviews_section"],
      'reviews_section',
    )!,
    active: safeParse<bool>(json["active"], 'active')!,
    offDay: safeParse<String>(json["off_day"], 'off_day')!,
    selfDeliverySystem: safeParse<int>(
      json["self_delivery_system"],
      'self_delivery_system',
    )!,
    posSystem: safeParse<bool>(json["pos_system"], 'pos_system')!,
    minimumShippingCharge: safeParse<int>(
      json["minimum_shipping_charge"],
      'minimum_shipping_charge',
    )!,
    deliveryTime: safeParse<String>(json["delivery_time"], 'delivery_time')!,
    veg: safeParse<int>(json["veg"], 'veg')!,
    nonVeg: safeParse<int>(json["non_veg"], 'non_veg')!,
    orderCount: safeParse<int>(json["order_count"], 'order_count')!,
    totalOrder: safeParse<int>(json["total_order"], 'total_order')!,
    perKmShippingCharge: json["per_km_shipping_charge"],
    restaurantModel: safeParse<String>(
      json["restaurant_model"],
      'restaurant_model',
    )!,
    maximumShippingCharge: json["maximum_shipping_charge"],
    slug: safeParse<String>(json["slug"], 'slug')!,
    orderSubscriptionActive: safeParse<bool>(
      json["order_subscription_active"],
      'order_subscription_active',
    )!,
    cutlery: safeParse<bool>(json["cutlery"], 'cutlery')!,
    metaTitle: json["meta_title"],
    metaDescription: json["meta_description"],
    metaImage: json["meta_image"],
    announcement: safeParse<int>(json["announcement"], 'announcement')!,
    announcementMessage: safeParse<String>(
      json["announcement_message"],
      'announcement_message',
    )!,
    qrCode: json["qr_code"],
    additionalData: json["additional_data"],
    additionalDocuments: safeParse<String>(
      json["additional_documents"],
      'additional_documents',
    )!,
    packageId: json["package_id"],
    tin: json["tin"],
    tinExpireDate: json["tin_expire_date"],
    tinCertificateImage: json["tin_certificate_image"],
    open: safeParse<int>(json["open"], 'open')!,
    distance: safeParse<double>(json["distance"], 'distance')!,
    foodsCount: safeParse<int>(json["foods_count"], 'foods_count')!,
    reviewsCommentsCount: safeParse<int>(
      json["reviews_comments_count"],
      'reviews_comments_count',
    )!,
    foods: List<Food>.from(json["foods"].map((x) => Food.fromJson(x))),
    priceStartsFrom: safeParse<int>(
      json["price_starts_from"],
      'price_starts_from',
    )!,
    coupons: List<dynamic>.from(json["coupons"].map((x) => x)),
    deliveryFee: safeParse<String>(json["delivery_fee"], 'delivery_fee')!,
    restaurantStatus: safeParse<int>(
      json["restaurant_status"],
      'restaurant_status',
    )!,
    cuisine: List<dynamic>.from(json["cuisine"].map((x) => x)),
    ratings: List<dynamic>.from(json["ratings"].map((x) => x)),
    avgRating: safeParse<int>(json["avg_rating"].toInt(), 'avg_rating')!,
    ratingCount: safeParse<int>(json["rating_count"], 'rating_count')!,
    positiveRating: safeParse<int>(json["positive_rating"], 'positive_rating')!,
    customerOrderDate: safeParse<int>(
      json["customer_order_date"],
      'customer_order_date',
    )!,
    customerDateOrderSratus: safeParse<bool>(
      json["customer_date_order_sratus"],
      'customer_date_order_sratus',
    )!,
    instantOrder: safeParse<bool>(json["instant_order"], 'instant_order')!,
    halalTagStatus: safeParse<bool>(
      json["halal_tag_status"],
      'halal_tag_status',
    )!,
    currentOpeningTime: safeParse<String>(
      json["current_opening_time"],
      'current_opening_time',
    )!,
    isExtraPackagingActive: safeParse<bool>(
      json["is_extra_packaging_active"],
      'is_extra_packaging_active',
    )!,
    extraPackagingStatus: safeParse<bool>(
      json["extra_packaging_status"],
      'extra_packaging_status',
    )!,
    extraPackagingAmount: safeParse<int>(
      json["extra_packaging_amount"],
      'extra_packaging_amount',
    )!,
    isDineInActive: safeParse<bool>(
      json["is_dine_in_active"],
      'is_dine_in_active',
    )!,
    canEditOrder: safeParse<bool>(json["can_edit_order"], 'can_edit_order')!,
    scheduleAdvanceDineInBookingDuration: safeParse<int>(
      json["schedule_advance_dine_in_booking_duration"],
      'schedule_advance_dine_in_booking_duration',
    )!,
    scheduleAdvanceDineInBookingDurationTimeFormat: safeParse<String>(
      json["schedule_advance_dine_in_booking_duration_time_format"],
      'schedule_advance_dine_in_booking_duration_time_format',
    )!,
    characteristics: List<dynamic>.from(json["characteristics"].map((x) => x)),
    gstStatus: safeParse<bool>(json["gst_status"], 'gst_status')!,
    gstCode: safeParse<String>(json["gst_code"], 'gst_code')!,
    freeDeliveryDistanceStatus: safeParse<bool>(
      json["free_delivery_distance_status"],
      'free_delivery_distance_status',
    )!,
    freeDeliveryDistanceValue: safeParse<String>(
      json["free_delivery_distance_value"],
      'free_delivery_distance_value',
    )!,
    logoFullUrl: safeParse<String>(json["logo_full_url"], 'logo_full_url')!,
    coverPhotoFullUrl: safeParse<String>(
      json["cover_photo_full_url"],
      'cover_photo_full_url',
    )!,
    metaImageFullUrl: json["meta_image_full_url"],
    tinCertificateImageFullUrl: json["tin_certificate_image_full_url"],
    discount: json["discount"],
  );
}

class Food {
  int id;
  String image;
  String name;
  String imageFullUrl;
  List<dynamic> storage;
  List<Translation> translations;

  Food({
    required this.id,
    required this.image,
    required this.name,
    required this.imageFullUrl,
    required this.storage,
    required this.translations,
  });

  factory Food.fromJson(Map<String, dynamic> json) => Food(
    id: safeParse<int>(json["id"], 'id')!,
    image: safeParse<String>(json["image"], 'image')!,
    name: safeParse<String>(json["name"], 'name')!,
    imageFullUrl: safeParse<String>(json["image_full_url"], 'image_full_url')!,
    storage: List<dynamic>.from(json["storage"].map((x) => x)),
    translations: List<Translation>.from(
      json["translations"].map((x) => Translation.fromJson(x)),
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
