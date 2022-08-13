import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:demo/core/api_endpoints.dart';
import 'package:demo/domain/productlist/i_show_productlist_repo.dart';
import 'package:demo/domain/productlist/models.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IshowProductListRepo)
class ShowProductListRepository implements IshowProductListRepo {
  @override
  Future<Either<String, List<ProductList>>> getProductList() async {
    try {
      var response = await http.get(Uri.parse(ApiEndPoints.fetchProducts));
      if (response.statusCode == 200 || response.statusCode == 201) {
          print("data");
          print(response.body);
        var data = productListFromJson(response.body);
        print("object");
        print(data.length);
        return right(data);
      }
    } catch (e) {
      print(e);
    }

    return left('Something Wrong');
  }
}

@LazySingleton(as: IshowCurentProductRepo)
class ShowCurrentProductRepository implements IshowCurentProductRepo{
  @override
  Future<Either<String, ProductList>> getCurrentProduct({required int id}) async{
  
    try {
      var response=await http.get(Uri.parse("${ApiEndPoints.fetchProducts}/${id}",));
      if(response.statusCode==200||response.statusCode==201){
        final data= jsonDecode(response.body);
        ProductList currentProduct=ProductList.fromJson(data) ;
        // print(currentProduct.images);
       
     
        print(currentProduct.description);
      
        return right(currentProduct);
      }
    } catch (e) {
      print(e);
    }
    return left('Something Wrong');
  }

}