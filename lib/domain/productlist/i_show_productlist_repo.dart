import 'package:dartz/dartz.dart';
import 'package:demo/domain/productlist/models.dart';

abstract class IshowProductListRepo{
Future<Either<String,List<ProductList>>> getProductList();
}

abstract class IshowCurentProductRepo{
  Future<Either<String,ProductList>> getCurrentProduct({required int id});
}