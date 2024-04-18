import 'package:injectable/injectable.dart';
import 'package:my_new_ecommerce_app/data/datasource_contract/brands_datasource.dart';
import 'package:my_new_ecommerce_app/domain/entities/Brand.dart';
import 'package:my_new_ecommerce_app/domain/repository/brands_repository.dart';

@Injectable(as: BrandsRepository)
class BrandsRepositoryImpl extends BrandsRepository {
  BrandsDataSource brandsDataSource;

  @factoryMethod
  BrandsRepositoryImpl({required this.brandsDataSource});

  @override
  Future<List<Brand>?> getBrands() {
    return brandsDataSource.getBrands();
  }
}
