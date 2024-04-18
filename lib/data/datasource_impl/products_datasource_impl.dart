import 'package:injectable/injectable.dart';
import 'package:my_new_ecommerce_app/data/api_manager/api_manager.dart';
import 'package:my_new_ecommerce_app/data/datasource_contract/products_datasource.dart';
import 'package:my_new_ecommerce_app/domain/entities/Product.dart';
import 'package:my_new_ecommerce_app/domain/repository/products_repository.dart';

@Injectable(as: ProductsDataSource)
class ProductsDataSourceImpl extends ProductsDataSource {
  ApiManager apiManager;

  @factoryMethod
  ProductsDataSourceImpl({required this.apiManager});

  @override
  Future<List<Product>?> getProducts({ProductSort? sort}) async {
    var response = await apiManager.getProducts(sort: sort);
    return response.data?.map((productDto) => productDto.toProduct()).toList();
  }
}
