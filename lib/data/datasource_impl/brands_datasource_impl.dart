import 'package:injectable/injectable.dart';
import 'package:my_new_ecommerce_app/data/api_manager/api_manager.dart';
import 'package:my_new_ecommerce_app/data/datasource_contract/brands_datasource.dart';
import 'package:my_new_ecommerce_app/domain/entities/Brand.dart';

@Injectable(as: BrandsDataSource)
class BrandsDataSourceImpl extends BrandsDataSource {
  ApiManager apiManager;

  @factoryMethod
  BrandsDataSourceImpl({required this.apiManager});

  @override
  Future<List<Brand>?> getBrands() async {
    var response = await apiManager.getBrands();
    return response.data?.map((brandDto) => brandDto.toBrand()).toList();
  }
}
