part of 'productlist_bloc.dart';

@freezed
class ProductlistEvent with _$ProductlistEvent {
  const factory ProductlistEvent.getProducts() = _GetProducts;
  const factory ProductlistEvent.getCurrentProduct({required int id}) = _GetCurrentProduct;
}