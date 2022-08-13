import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:demo/domain/productlist/i_show_productlist_repo.dart';
import 'package:demo/domain/productlist/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'productlist_event.dart';
part 'productlist_state.dart';
part 'productlist_bloc.freezed.dart';

@injectable
class ProductlistBloc extends Bloc<ProductlistEvent, ProductlistState> {
  final IshowProductListRepo _ishowProductListRepo;
final IshowCurentProductRepo _ishowCurentProductRepo;
  ProductlistBloc(this._ishowProductListRepo,this._ishowCurentProductRepo)
      : super(ProductlistState.initial()) {
    on<_GetProducts>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, productListFailureOrSuccessOption: none()));
      final Either<String, List<ProductList>> productListOption =
          await _ishowProductListRepo.getProductList();
      emit(productListOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              productListFailureOrSuccessOption: Some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              productlist: success,
              productListFailureOrSuccessOption: Some(right(success)))));
    });

    on<_GetCurrentProduct>((event, emit) async{
      emit(state.copyWith(isLoading: true,currentProductFailureOrSuccessOption: none()));
  final Either<String, ProductList> currentProductOption =await _ishowCurentProductRepo.getCurrentProduct(id: event.id);
   emit(currentProductOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              currentProductFailureOrSuccessOption: Some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              currentProduct: success,
              currentProductFailureOrSuccessOption: Some(right(success)))));
    });
    
  }
}
