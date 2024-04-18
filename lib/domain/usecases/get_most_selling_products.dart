import 'package:injectable/injectable.dart';
import 'package:my_new_ecommerce_app/domain/entities/Product.dart';
import 'package:my_new_ecommerce_app/domain/repository/products_repository.dart';

@injectable
class GetMostSellingProducts {
  ProductsRepository productsRepository;

  @factoryMethod
  GetMostSellingProducts({required this.productsRepository});

  Future<List<Product>?> invoke() {
    return productsRepository.getProducts(sortBy: ProductSort.mostSelling);
  }
}
