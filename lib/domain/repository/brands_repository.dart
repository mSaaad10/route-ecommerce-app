import 'package:my_new_ecommerce_app/domain/entities/Brand.dart';

abstract class BrandsRepository {
  Future<List<Brand>?> getBrands();
}
