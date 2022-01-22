import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_todo/domain/todo/i_todo_repository.dart';
import 'package:supabase_todo/domain/todo/todo.dart';

part 'todo_state.dart';
part 'todo_cubit.freezed.dart';

class ToDoCubit extends Cubit<ToDoState> {
  final IToDoRepository _repository;
  late StreamSubscription<List<Map<String, dynamic>>>? _stream;

  ToDoCubit(this._repository) : super(const ToDoState.initial()) {
    _stream = _repository.openToDoStream().listen((event) {
      emit(ToDoState.updated(event.map((e) => ToDo.fromJson(e)).toList()));
    });
  }

  List<ToDo>? _getCurrentData() => state.map(
        initial: (s) => null,
        updated: (s) => s.todos,
        error: (s) => s.todos,
      );

  Future<void> addToDo(String title) async {
    final response = await _repository.addToDo(title);
    response.fold(
      (f) {
        final todos = _getCurrentData();
        emit(ToDoState.error(
          f.message,
          todos,
        ));
      },
      (r) => null,
    );
  }

  Future<void> finishToDo(int toDoId) async {
    final response = await _repository.finishToDo(toDoId);
    response.fold(
      (f) {
        final todos = _getCurrentData();
        emit(ToDoState.error(
          f.message,
          todos,
        ));
      },
      (r) => null,
    );
  }

  @override
  Future<void> close() async {
    await _stream?.cancel();
    return super.close();
  }
}
