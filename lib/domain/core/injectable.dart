

import 'package:demo/domain/core/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt=GetIt.instance;
@InjectableInit()
Future<void>configureInjection() async{
  await $initGetIt(getIt,environment:Environment.prod);
   

}