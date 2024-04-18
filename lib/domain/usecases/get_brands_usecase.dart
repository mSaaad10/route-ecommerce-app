import 'package:injectable/injectable.dart';
import 'package:my_new_ecommerce_app/domain/entities/Brand.dart';
import 'package:my_new_ecommerce_app/domain/repository/brands_repository.dart';

@injectable
class GetBrandsUseCase {
  BrandsRepository brandsRepository;

  @factoryMethod
  GetBrandsUseCase({required this.brandsRepository});

  Future<List<Brand>?> invoke() {
    return brandsRepository.getBrands();
  }
}
