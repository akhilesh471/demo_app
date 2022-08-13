part of 'productlist_bloc.dart';

@freezed
class ProductlistState with _$ProductlistState {
  const factory ProductlistState({required List<ProductList> productlist, required bool isLoading,required Option<Either<String, List<ProductList>>> productListFailureOrSuccessOption, required ProductList currentProduct,required Option<Either<String, ProductList>> currentProductFailureOrSuccessOption }) = _Initial;
  factory ProductlistState.initial(){
    return ProductlistState(productlist: [],isLoading: false,productListFailureOrSuccessOption: None(),currentProductFailureOrSuccessOption: None(),currentProduct: ProductList(price: 0,id: 0, title: '', description: '', category:Category(id: 0, image: '', keyLoremSpace: '') , images: []));  }
}
