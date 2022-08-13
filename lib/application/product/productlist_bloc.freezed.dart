// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'productlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(int id) getCurrentProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(int id)? getCurrentProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(int id)? getCurrentProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetCurrentProduct value) getCurrentProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetCurrentProduct value)? getCurrentProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetCurrentProduct value)? getCurrentProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductlistEventCopyWith<$Res> {
  factory $ProductlistEventCopyWith(
          ProductlistEvent value, $Res Function(ProductlistEvent) then) =
      _$ProductlistEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductlistEventCopyWithImpl<$Res>
    implements $ProductlistEventCopyWith<$Res> {
  _$ProductlistEventCopyWithImpl(this._value, this._then);

  final ProductlistEvent _value;
  // ignore: unused_field
  final $Res Function(ProductlistEvent) _then;
}

/// @nodoc
abstract class _$GetProductsCopyWith<$Res> {
  factory _$GetProductsCopyWith(
          _GetProducts value, $Res Function(_GetProducts) then) =
      __$GetProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProductsCopyWithImpl<$Res>
    extends _$ProductlistEventCopyWithImpl<$Res>
    implements _$GetProductsCopyWith<$Res> {
  __$GetProductsCopyWithImpl(
      _GetProducts _value, $Res Function(_GetProducts) _then)
      : super(_value, (v) => _then(v as _GetProducts));

  @override
  _GetProducts get _value => super._value as _GetProducts;
}

/// @nodoc

class _$_GetProducts implements _GetProducts {
  const _$_GetProducts();

  @override
  String toString() {
    return 'ProductlistEvent.getProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(int id) getCurrentProduct,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(int id)? getCurrentProduct,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(int id)? getCurrentProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetCurrentProduct value) getCurrentProduct,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetCurrentProduct value)? getCurrentProduct,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetCurrentProduct value)? getCurrentProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProducts implements ProductlistEvent {
  const factory _GetProducts() = _$_GetProducts;
}

/// @nodoc
abstract class _$GetCurrentProductCopyWith<$Res> {
  factory _$GetCurrentProductCopyWith(
          _GetCurrentProduct value, $Res Function(_GetCurrentProduct) then) =
      __$GetCurrentProductCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$GetCurrentProductCopyWithImpl<$Res>
    extends _$ProductlistEventCopyWithImpl<$Res>
    implements _$GetCurrentProductCopyWith<$Res> {
  __$GetCurrentProductCopyWithImpl(
      _GetCurrentProduct _value, $Res Function(_GetCurrentProduct) _then)
      : super(_value, (v) => _then(v as _GetCurrentProduct));

  @override
  _GetCurrentProduct get _value => super._value as _GetCurrentProduct;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_GetCurrentProduct(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetCurrentProduct implements _GetCurrentProduct {
  const _$_GetCurrentProduct({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ProductlistEvent.getCurrentProduct(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCurrentProduct &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$GetCurrentProductCopyWith<_GetCurrentProduct> get copyWith =>
      __$GetCurrentProductCopyWithImpl<_GetCurrentProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(int id) getCurrentProduct,
  }) {
    return getCurrentProduct(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(int id)? getCurrentProduct,
  }) {
    return getCurrentProduct?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(int id)? getCurrentProduct,
    required TResult orElse(),
  }) {
    if (getCurrentProduct != null) {
      return getCurrentProduct(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetCurrentProduct value) getCurrentProduct,
  }) {
    return getCurrentProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetCurrentProduct value)? getCurrentProduct,
  }) {
    return getCurrentProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetCurrentProduct value)? getCurrentProduct,
    required TResult orElse(),
  }) {
    if (getCurrentProduct != null) {
      return getCurrentProduct(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentProduct implements ProductlistEvent {
  const factory _GetCurrentProduct({required final int id}) =
      _$_GetCurrentProduct;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetCurrentProductCopyWith<_GetCurrentProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductlistState {
  List<ProductList> get productlist => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<String, List<ProductList>>>
      get productListFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  ProductList get currentProduct => throw _privateConstructorUsedError;
  Option<Either<String, ProductList>>
      get currentProductFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductlistStateCopyWith<ProductlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductlistStateCopyWith<$Res> {
  factory $ProductlistStateCopyWith(
          ProductlistState value, $Res Function(ProductlistState) then) =
      _$ProductlistStateCopyWithImpl<$Res>;
  $Res call(
      {List<ProductList> productlist,
      bool isLoading,
      Option<Either<String, List<ProductList>>>
          productListFailureOrSuccessOption,
      ProductList currentProduct,
      Option<Either<String, ProductList>>
          currentProductFailureOrSuccessOption});
}

/// @nodoc
class _$ProductlistStateCopyWithImpl<$Res>
    implements $ProductlistStateCopyWith<$Res> {
  _$ProductlistStateCopyWithImpl(this._value, this._then);

  final ProductlistState _value;
  // ignore: unused_field
  final $Res Function(ProductlistState) _then;

  @override
  $Res call({
    Object? productlist = freezed,
    Object? isLoading = freezed,
    Object? productListFailureOrSuccessOption = freezed,
    Object? currentProduct = freezed,
    Object? currentProductFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      productlist: productlist == freezed
          ? _value.productlist
          : productlist // ignore: cast_nullable_to_non_nullable
              as List<ProductList>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productListFailureOrSuccessOption: productListFailureOrSuccessOption ==
              freezed
          ? _value.productListFailureOrSuccessOption
          : productListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<ProductList>>>,
      currentProduct: currentProduct == freezed
          ? _value.currentProduct
          : currentProduct // ignore: cast_nullable_to_non_nullable
              as ProductList,
      currentProductFailureOrSuccessOption: currentProductFailureOrSuccessOption ==
              freezed
          ? _value.currentProductFailureOrSuccessOption
          : currentProductFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, ProductList>>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $ProductlistStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ProductList> productlist,
      bool isLoading,
      Option<Either<String, List<ProductList>>>
          productListFailureOrSuccessOption,
      ProductList currentProduct,
      Option<Either<String, ProductList>>
          currentProductFailureOrSuccessOption});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ProductlistStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? productlist = freezed,
    Object? isLoading = freezed,
    Object? productListFailureOrSuccessOption = freezed,
    Object? currentProduct = freezed,
    Object? currentProductFailureOrSuccessOption = freezed,
  }) {
    return _then(_Initial(
      productlist: productlist == freezed
          ? _value.productlist
          : productlist // ignore: cast_nullable_to_non_nullable
              as List<ProductList>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productListFailureOrSuccessOption: productListFailureOrSuccessOption ==
              freezed
          ? _value.productListFailureOrSuccessOption
          : productListFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<ProductList>>>,
      currentProduct: currentProduct == freezed
          ? _value.currentProduct
          : currentProduct // ignore: cast_nullable_to_non_nullable
              as ProductList,
      currentProductFailureOrSuccessOption: currentProductFailureOrSuccessOption ==
              freezed
          ? _value.currentProductFailureOrSuccessOption
          : currentProductFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, ProductList>>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<ProductList> productlist,
      required this.isLoading,
      required this.productListFailureOrSuccessOption,
      required this.currentProduct,
      required this.currentProductFailureOrSuccessOption})
      : _productlist = productlist;

  final List<ProductList> _productlist;
  @override
  List<ProductList> get productlist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productlist);
  }

  @override
  final bool isLoading;
  @override
  final Option<Either<String, List<ProductList>>>
      productListFailureOrSuccessOption;
  @override
  final ProductList currentProduct;
  @override
  final Option<Either<String, ProductList>>
      currentProductFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProductlistState(productlist: $productlist, isLoading: $isLoading, productListFailureOrSuccessOption: $productListFailureOrSuccessOption, currentProduct: $currentProduct, currentProductFailureOrSuccessOption: $currentProductFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.productlist, productlist) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(
                other.productListFailureOrSuccessOption,
                productListFailureOrSuccessOption) &&
            const DeepCollectionEquality()
                .equals(other.currentProduct, currentProduct) &&
            const DeepCollectionEquality().equals(
                other.currentProductFailureOrSuccessOption,
                currentProductFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productlist),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(productListFailureOrSuccessOption),
      const DeepCollectionEquality().hash(currentProduct),
      const DeepCollectionEquality()
          .hash(currentProductFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements ProductlistState {
  const factory _Initial(
      {required final List<ProductList> productlist,
      required final bool isLoading,
      required final Option<Either<String, List<ProductList>>>
          productListFailureOrSuccessOption,
      required final ProductList currentProduct,
      required final Option<Either<String, ProductList>>
          currentProductFailureOrSuccessOption}) = _$_Initial;

  @override
  List<ProductList> get productlist => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<Either<String, List<ProductList>>>
      get productListFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  @override
  ProductList get currentProduct => throw _privateConstructorUsedError;
  @override
  Option<Either<String, ProductList>>
      get currentProductFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
