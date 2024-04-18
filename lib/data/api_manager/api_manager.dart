import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'package:my_new_ecommerce_app/data/model/brands_response/BrandsResponse.dart';
import 'package:my_new_ecommerce_app/data/model/categories_response/CategoriesResponse.dart';
import 'package:my_new_ecommerce_app/data/model/products_response/ProductsResponse.dart';
import 'package:my_new_ecommerce_app/domain/repository/products_repository.dart';

@singleton
@injectable
class ApiManager {
  static const baseUrl = 'ecommerce.routemisr.com';

  Future<CategoriesResponse> getCategories() async {
    var url = Uri.https(baseUrl, '/api/v1/categories');
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    CategoriesResponse categoriesResponse = CategoriesResponse.fromJson(json);
    return categoriesResponse;
  }

  Future<BrandsResponse> getBrands() async {
    var url = Uri.https(baseUrl, '/api/v1/brands');
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    BrandsResponse brandsResponse = BrandsResponse.fromJson(json);
    return brandsResponse;
  }

  Future<ProductsResponse> getProducts({ProductSort? sort}) async {
    var params = {};
    if (sort != null) {
      params['sort'] = sort.value;
    }
    var url = Uri.https(
      baseUrl,
      '/api/v1/products',
    );
    var response = await http.get(url);
    var json = jsonDecode(response.body);
    ProductsResponse productsResponse = ProductsResponse.fromJson(json);
    return productsResponse;
  }
}
