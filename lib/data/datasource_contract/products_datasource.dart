import 'package:my_new_ecommerce_app/domain/entities/Product.dart';
import 'package:my_new_ecommerce_app/domain/repository/products_repository.dart';

abstract class ProductsDataSource {
  Future<List<Product>?> getProducts({ProductSort? sort});
}
