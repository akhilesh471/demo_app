import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_index_event.dart';
part 'category_index_state.dart';
part 'category_index_bloc.freezed.dart';

class CategoryIndexBloc extends Bloc<CategoryIndexEvent, CategoryIndexState> {
  CategoryIndexBloc() : super(CategoryIndexState.initial()) {
    on<_CategoryIndex>((event, emit) {
   emit(CategoryIndexState(index: event.index));
    });
  }
}
