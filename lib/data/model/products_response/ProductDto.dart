import 'package:my_new_ecommerce_app/data/model/brands_response/BrandDto.dart';
import 'package:my_new_ecommerce_app/data/model/categories_response/categoryDto.dart';
import 'package:my_new_ecommerce_app/domain/entities/Product.dart';

import 'SubcategoryDto.dart';

class ProductDto {
  ProductDto({
    this.sold,
    this.images,
    this.subcategory,
    this.ratingsQuantity,
    this.id,
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
    this.createdAt,
    this.updatedAt,
  });

  ProductDto.fromJson(dynamic json) {
    sold = json['sold'];
    images = json['images'] != null ? json['images'].cast<String>() : [];
    if (json['subcategory'] != null) {
      subcategory = [];
      json['subcategory'].forEach((v) {
        subcategory?.add(SubcategoryDto.fromJson(v));
      });
    }
    ratingsQuantity = json['ratingsQuantity'];
    id = json['_id'];
    title = json['title'];
    slug = json['slug'];
    description = json['description'];
    quantity = json['quantity'];
    price = json['price'];
    priceAfterDiscount = json['priceAfterDiscount'];
    imageCover = json['imageCover'];
    category = json['category'] != null
        ? CategoryDto.fromJson(json['category'])
        : null;
    brand = json['brand'] != null ? BrandDto.fromJson(json['brand']) : null;
    ratingsAverage = json['ratingsAverage'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    id = json['id'];
  }

  int? sold;
  List<String>? images;
  List<SubcategoryDto>? subcategory;
  int? ratingsQuantity;
  String? id;
  String? title;
  String? slug;
  String? description;
  int? quantity;
  int? price;
  int? priceAfterDiscount;
  String? imageCover;
  CategoryDto? category;
  BrandDto? brand;
  num? ratingsAverage;
  String? createdAt;
  String? updatedAt;

  ProductDto copyWith({
    int? sold,
    List<String>? images,
    List<SubcategoryDto>? subcategory,
    int? ratingsQuantity,
    String? id,
    String? title,
    String? slug,
    String? description,
    int? quantity,
    int? price,
    int? priceAfterDiscount,
    String? imageCover,
    CategoryDto? category,
    BrandDto? brand,
    double? ratingsAverage,
    String? createdAt,
    String? updatedAt,
  }) =>
      ProductDto(
        sold: sold ?? this.sold,
        images: images ?? this.images,
        subcategory: subcategory ?? this.subcategory,
        ratingsQuantity: ratingsQuantity ?? this.ratingsQuantity,
        id: id ?? this.id,
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
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sold'] = sold;
    map['images'] = images;
    if (subcategory != null) {
      map['subcategory'] = subcategory?.map((v) => v.toJson()).toList();
    }
    map['ratingsQuantity'] = ratingsQuantity;
    map['_id'] = id;
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
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['id'] = id;
    return map;
  }

  Product toProduct() {
    return Product(
      sold: sold,
      images: images,
      subcategory: subcategory?.map((e) => e.toSubCategory()).toList(),
      ratingsQuantity: ratingsQuantity,
      id: id,
      title: title,
      slug: slug,
      description: description,
      quantity: quantity,
      price: price,
      priceAfterDiscount: priceAfterDiscount,
      imageCover: imageCover,
      category: category?.toCategory(),
      brand: brand?.toBrand(),
      ratingsAverage: ratingsAverage,
    );
  }
}
