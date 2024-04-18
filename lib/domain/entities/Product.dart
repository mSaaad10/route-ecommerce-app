import 'package:my_new_ecommerce_app/domain/entities/Subcategory.dart';

import 'Brand.dart';
import 'Category.dart';

class Product {
  Product({
    this.sold,
    this.images,
    this.subcategory,
    this.ratingsQuantity,
    this.title,
    this.slug,
    this.description,
    this.quantity,
    this.price,
    this.priceAfterDiscount,
    this.imageCover,
    this.category,
    this.brand,
    this.ratingsAverage,
    this.id,
  });

  Product.fromJson(dynamic json) {
    sold = json['sold'];
    images = json['images'] != null ? json['images'].cast<String>() : [];
    if (json['subcategory'] != null) {
      subcategory = [];
      json['subcategory'].forEach((v) {
        subcategory?.add(Subcategory.fromJson(v));
      });
    }
    ratingsQuantity = json['ratingsQuantity'];
    title = json['title'];
    slug = json['slug'];
    description = json['description'];
    quantity = json['quantity'];
    price = json['price'];
    priceAfterDiscount = json['priceAfterDiscount'];
    imageCover = json['imageCover'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    ratingsAverage = json['ratingsAverage'];
    id = json['id'];
  }

  int? sold;
  List<String>? images;
  List<Subcategory>? subcategory;
  int? ratingsQuantity;
  String? title;
  String? slug;
  String? description;
  int? quantity;
  int? price;
  int? priceAfterDiscount;
  String? imageCover;
  Category? category;
  Brand? brand;
  num? ratingsAverage;
  String? id;

  Product copyWith({
    int? sold,
    List<String>? images,
    List<Subcategory>? subcategory,
    int? ratingsQuantity,
    String? title,
    String? slug,
    String? description,
    int? quantity,
    int? price,
    int? priceAfterDiscount,
    String? imageCover,
    Category? category,
    Brand? brand,
    double? ratingsAverage,
    String? id,
  }) =>
      Product(
        sold: sold ?? this.sold,
        images: images ?? this.images,
        subcategory: subcategory ?? this.subcategory,
        ratingsQuantity: ratingsQuantity ?? this.ratingsQuantity,
        title: title ?? this.title,
        slug: slug ?? this.slug,
        description: description ?? this.description,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price,
        priceAfterDiscount: priceAfterDiscount ?? this.priceAfterDiscount,
        imageCover: imageCover ?? this.imageCover,
        category: category ?? this.category,
        brand: brand ?? this.brand,
        ratingsAverage: ratingsAverage ?? this.ratingsAverage,
        id: id ?? this.id,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sold'] = sold;
    map['images'] = images;
    if (subcategory != null) {
      map['subcategory'] = subcategory?.map((v) => v.toJson()).toList();
    }
    map['ratingsQuantity'] = ratingsQuantity;
    map['title'] = title;
    map['slug'] = slug;
    map['description'] = description;
    map['quantity'] = quantity;
    map['price'] = price;
    map['priceAfterDiscount'] = priceAfterDiscount;
    map['imageCover'] = imageCover;
    if (category != null) {
      map['category'] = category?.toJson();
    }
    if (brand != null) {
      map['brand'] = brand?.toJson();
    }
    map['ratingsAverage'] = ratingsAverage;
    map['id'] = id;
    return map;
  }
}
