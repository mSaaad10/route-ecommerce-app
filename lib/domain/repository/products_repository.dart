import 'package:my_new_ecommerce_app/domain/entities/Product.dart';

abstract class ProductsRepository {
  Future<List<Product>?> getProducts({ProductSort? sortBy});
}

enum ProductSort {
  lowestPrice("price"),
  highestPrice("-price"),
  mostSelling("-sort");

  final String value;

  const ProductSort(this.value);
}
