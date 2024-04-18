import 'package:my_new_ecommerce_app/domain/entities/Category.dart';

abstract class CategoriesDataSource {
  Future<List<Category>?> getCategories();
}
