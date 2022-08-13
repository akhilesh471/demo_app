import 'package:demo/application/category/category_index_bloc.dart';
import 'package:demo/application/product/productlist_bloc.dart';
import 'package:demo/domain/core/injectable.dart';
import 'package:demo/presentation/homepage/homepage.dart';
import 'package:demo/presentation/login/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

bool? isLogged;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  final prefs = await SharedPreferences.getInstance();
  isLogged = prefs.getBool('flag');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProductlistBloc>(),
        ),
        BlocProvider(
          create: (context) => CategoryIndexBloc(),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: isLogged == true ? HomePage() : Login()),
    );
  }
}
