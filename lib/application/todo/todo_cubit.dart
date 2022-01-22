import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_todo/domain/todo/i_todo_repository.dart';
import 'package:supabase_todo/domain/todo/todo.dart';
import 'package:supabase_todo/domain/todo/todo_failure.dart';
import 'package:supabase_todo/domain/todo/todo_list.dart';

part 'todo_state.dart';
part 'todo_cubit.freezed.dart';

class ToDoCubit extends Cubit<ToDoState> {
  final IToDoRepository _repository;
  StreamSubscription<List<Map<String, dynamic>>>? _stream;

  ToDoCubit(this._repository) : super(const ToDoState.initial());

  List<ToDoList>? _getCurrentLists() => state.map(
        initial: (s) => null,
        listsReceved: (s) => s.todoLists,
        updated: (s) => s.todoLists,
        error: (s) => s.todoLists,
      );

  List<ToDo>? _getCurrentTodos() => state.map(
        initial: (s) => null,
        listsReceved: (s) => null,
        updated: (s) => s.todos,
        error: (s) => s.todos,
      );

  void _handleError(ToDoFailure f) {
    final lists = _getCurrentLists();
    final todos = _getCurrentTodos();
    emit(ToDoState.error(
      f.message,
      lists,
      todos,
    ));
  }

  Future<void> getToDoLists() async {
    final response = await _repository.getToDoLists();
    response.fold(
      _handleError,
      (r) => emit(ToDoState.listsReceved(r)),
    );
  }

  Future<void> startStream(int toDoListId) async {
    await _stream?.cancel();
    _stream = _repository.openToDoStream(toDoListId).listen((event) {
      emit(ToDoState.updated(
          _getCurrentLists(), event.map((e) => ToDo.fromJson(e)).toList()));
    });
  }

  Future<void> addToDo(int todoListId, String title) async {
    final response = await _repository.addToDo(todoListId, title);
    response.fold(
      _handleError,
      (r) => null,
    );
  }

  Future<void> finishToDo(int toDoId) async {
    final response = await _repository.finishToDo(toDoId);
    response.fold(
      _handleError,
      (r) => null,
    );
  }

  @override
  Future<void> close() async {
    await _stream?.cancel();
    return super.close();
  }
}
