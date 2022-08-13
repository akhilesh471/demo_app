part of 'category_index_bloc.dart';

@freezed
class CategoryIndexEvent with _$CategoryIndexEvent {
  const factory CategoryIndexEvent.index({required int index}) = _CategoryIndex;
}