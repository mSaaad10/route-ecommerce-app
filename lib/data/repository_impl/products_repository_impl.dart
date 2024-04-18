import 'package:injectable/injectable.dart';
import 'package:my_new_ecommerce_app/data/datasource_contract/products_datasource.dart';
import 'package:my_new_ecommerce_app/domain/entities/Product.dart';
import 'package:my_new_ecommerce_app/domain/repository/products_repository.dart';

@Injectable(as: ProductsRepository)
class ProductsRepositoryImpl extends ProductsRepository {
  ProductsDataSource productsDataSource;

  @factoryMethod
  ProductsRepositoryImpl({required this.productsDataSource});

  @override
  Future<List<Product>?> getProducts({ProductSort? sortBy}) {
    return productsDataSource.getProducts(sort: sortBy);
  }
}
