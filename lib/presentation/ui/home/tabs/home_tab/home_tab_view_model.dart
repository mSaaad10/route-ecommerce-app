import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_new_ecommerce_app/domain/entities/Brand.dart';
import 'package:my_new_ecommerce_app/domain/entities/Category.dart';
import 'package:my_new_ecommerce_app/domain/entities/Product.dart';
import 'package:my_new_ecommerce_app/domain/usecases/get_brands_usecase.dart';
import 'package:my_new_ecommerce_app/domain/usecases/get_categories_usecase.dart';
import 'package:my_new_ecommerce_app/domain/usecases/get_most_selling_products.dart';

@injectable
class HomeTabViewModel extends Cubit<HomeTabState> {
  GetCategoriesUSeCase getCategoriesUseCase;
  GetBrandsUseCase getBrandsUseCase;
  GetMostSellingProducts getMostSellingProducts;

  @factoryMethod
  HomeTabViewModel({
    required this.getCategoriesUseCase,
    required this.getBrandsUseCase,
    required this.getMostSellingProducts,
  }) : super(LoadingState(message: 'Loading'));

  void initPage() async {
    emit(LoadingState(message: 'Loading...'));
    try {
      var categories = await getCategoriesUseCase.invoke();
      var brands = await getBrandsUseCase.invoke();
      var mostSellingProducts = await getMostSellingProducts.invoke();
      emit(SuccessState(
          categories: categories,
          brands: brands,
          mostSellingProducts: mostSellingProducts));
    } catch (e) {
      emit(ErrorState(errorMessage: e.toString()));
    }
  }
}

sealed class HomeTabState {}

class LoadingState extends HomeTabState {
  String message;

  LoadingState({required this.message});
}

class ErrorState extends HomeTabState {
  String? errorMessage;

  ErrorState({this.errorMessage});
}

class SuccessState extends HomeTabState {
  List<Category>? categories;
  List<Brand>? brands;
  List<Product>? mostSellingProducts;

  SuccessState({this.categories, this.brands, this.mostSellingProducts});
}
