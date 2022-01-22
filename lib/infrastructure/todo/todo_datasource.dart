import 'package:supabase/supabase.dart';
import 'package:supabase_todo/domain/todo/todo_list.dart';
import 'package:supabase_todo/infrastructure/todo/todo_exception.dart';

abstract class ToDoDataSource {
  /// Get all todo lists
  ///
  /// Throws a [ToDoException] for all error codes.
  Future<List<ToDoList>> getToDoLists();

  /// Open a ToDo events stream
  ///
  /// Throws a [ToDoException] for all error codes.
  Stream<List<Map<String, dynamic>>> openToDoStream(int toDoListId);

  /// Add a new todo
  ///
  /// Throws a [ToDoException] for all error codes.
  Future<bool> addTodo(int todoListId, String title);

  /// Complete a todo item
  ///
  /// Throws a [ToDoException] for all error codes.
  Future<bool> finishToDo(int toDoId);
}

class ToDoDataSourceImpl implements ToDoDataSource {
  final SupabaseClient _client;

  ToDoDataSourceImpl(
    this._client,
  );
  @override
  Future<List<ToDoList>> getToDoLists() async {
    final response = await _client.from('todo_lists').select('*').execute();
    if (response.hasError) {
      throw ToDoException.unexpected(
        response.error!.message,
      );
    } else {
      return (response.data as List<dynamic>)
          .map((json) => ToDoList.fromJson(json as Map<String, dynamic>))
          .toList();
    }
  }

  @override
  Stream<List<Map<String, dynamic>>> openToDoStream(int toDoListId) => _client
      .from('todos:todo_list_id=eq.$toDoListId')
      .stream(['todo_id'])
      .order('todo_created_at', ascending: true)
      .execute();

  @override
  Future<bool> addTodo(int todoListId, String title) async {
    final response = await _client.from('todos').insert({
      'todo_title': title,
      'todo_list_id': todoListId,
    }).execute();
    if (response.hasError) {
      throw ToDoException.unexpected(
        response.error!.message,
      );
    } else {
      return true;
    }
  }

  @override
  Future<bool> finishToDo(int toDoId) async {
    final response = await _client
        .from('todos')
        .update({'todo_is_done': true}).match({'todo_id': toDoId}).execute();
    if (response.hasError) {
      throw ToDoException.unexpected(
        response.error!.message,
      );
    } else {
      return true;
    }
  }
}
