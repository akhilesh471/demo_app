part of 'category_index_bloc.dart';

@freezed
class CategoryIndexState with _$CategoryIndexState {
  const factory CategoryIndexState({required int index}) = _Initial;
  factory CategoryIndexState.initial(){
    return CategoryIndexState(index: 0);
  }
}
