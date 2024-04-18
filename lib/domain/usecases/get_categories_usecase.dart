import 'package:injectable/injectable.dart';
import 'package:my_new_ecommerce_app/domain/entities/Category.dart';
import 'package:my_new_ecommerce_app/domain/repository/categories_repository.dart';

@injectable
class GetCategoriesUSeCase {
  // functional requirements
  // businessLogic
  CategoriesRepository categoryRepository;

  @factoryMethod
  GetCategoriesUSeCase({required this.categoryRepository});

  Future<List<Category>?> invoke() {
    return categoryRepository.getCategories();
  }
}
