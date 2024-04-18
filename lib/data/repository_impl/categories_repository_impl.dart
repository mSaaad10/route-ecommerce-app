import 'package:injectable/injectable.dart';
import 'package:my_new_ecommerce_app/data/datasource_contract/categories_datasource.dart';
import 'package:my_new_ecommerce_app/domain/entities/Category.dart';
import 'package:my_new_ecommerce_app/domain/repository/categories_repository.dart';

@Injectable(as: CategoriesRepository)
class CategoryRepositoryImp extends CategoriesRepository {
  CategoriesDataSource categoriesDataSource;

  @factoryMethod
  CategoryRepositoryImp({required this.categoriesDataSource});

  @override
  Future<List<Category>?> getCategories() {
    return categoriesDataSource.getCategories();
  }
}
