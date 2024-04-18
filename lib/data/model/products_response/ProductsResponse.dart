import 'package:my_new_ecommerce_app/data/model/PaginationDto.dart';

import 'ProductDto.dart';

class ProductsResponse {
  ProductsResponse({
    this.results,
    this.metadata,
    this.data,
  });

  ProductsResponse.fromJson(dynamic json) {
    results = json['results'];
    metadata = json['metadata'] != null
        ? PaginationDto.fromJson(json['metadata'])
        : null;
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(ProductDto.fromJson(v));
      });
    }
  }

  int? results;
  PaginationDto? metadata;
  List<ProductDto>? data;

  ProductsResponse copyWith({
    int? results,
    PaginationDto? metadata,
    List<ProductDto>? data,
  }) =>
      ProductsResponse(
        results: results ?? this.results,
        metadata: metadata ?? this.metadata,
        data: data ?? this.data,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['results'] = results;
    if (metadata != null) {
      map['metadata'] = metadata?.toJson();
    }
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
