import 'package:task_09/core/error/safe_parse.dart';

class Category {
  int id;
  String name;
  String image;
  int parentId;
  int position;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  int priority;
  String slug;
  int productsCount;
  int childesCount;
  String orderCount;
  String imageFullUrl;
  List<Translation> translations;
  List<Storage> storage;

  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.parentId,
    required this.position,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.priority,
    required this.slug,
    required this.productsCount,
    required this.childesCount,
    required this.orderCount,
    required this.imageFullUrl,
    required this.translations,
    required this.storage,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: safeParse<int>(json["id"], 'id')!,
    name: safeParse<String>(json["name"], 'name')!,
    image: safeParse<String>(json["image"], 'image')!,
    parentId: safeParse<int>(json["parent_id"], 'parent_id')!,
    position: safeParse<int>(json["position"], 'position')!,
    status: safeParse<int>(json["status"], 'status')!,
    createdAt: DateTime.parse(
      safeParse<String>(json["created_at"], 'created_at')!,
    ),
    updatedAt: DateTime.parse(
      safeParse<String>(json["updated_at"], 'updated_at')!,
    ),
    priority: safeParse<int>(json["priority"], 'priority')!,
    slug: safeParse<String>(json["slug"], 'slug')!,
    productsCount: safeParse<int>(json["products_count"], 'products_count')!,
    childesCount: safeParse<int>(json["childes_count"], 'childes_count')!,
    orderCount: safeParse<String>(json["order_count"], 'order_count')!,
    imageFullUrl: safeParse<String>(json["image_full_url"], 'image_full_url')!,
    translations: List<Translation>.from(
      json["translations"].map((x) => Translation.fromJson(x)),
    ),
    storage: List<Storage>.from(
      json["storage"].map((x) => Storage.fromJson(x)),
    ),
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
