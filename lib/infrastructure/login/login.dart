import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:demo/core/api_endpoints.dart';
import 'package:demo/domain/login/model.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Either<String, bool>> authentication(
    {required String username, required String password}) async {
  var dio = Dio();
  var data = LoginModel(username: username, password: password).toJson();

  try {
    var response = await dio.post(ApiEndPoints.login, data: data);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var token = response.data;
      if (token != null) {
      final prefs=await  SharedPreferences.getInstance();
      await prefs.setBool('flag', true);
        return right(true);
      }
    } else {
      return left('something Wrong');
    }
  } on DioError catch (e) {
    print("object");
    Fluttertoast.showToast(msg: 'wrong username or password ');
    return left("Sorry");
  }
  return left('Server error');
}
