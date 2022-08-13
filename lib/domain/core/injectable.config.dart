// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/product/productlist_bloc.dart' as _i5;
import '../../infrastructure/productlist/productlist_repository.dart' as _i4;
import '../productlist/i_show_productlist_repo.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IshowCurentProductRepo>(
      () => _i4.ShowCurrentProductRepository());
  gh.lazySingleton<_i3.IshowProductListRepo>(
      () => _i4.ShowProductListRepository());
  gh.factory<_i5.ProductlistBloc>(() => _i5.ProductlistBloc(
      get<_i3.IshowProductListRepo>(), get<_i3.IshowCurentProductRepo>()));
  return get;
}
