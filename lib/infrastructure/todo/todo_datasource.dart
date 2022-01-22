import 'package:supabase/supabase.dart';
import 'package:supabase_todo/infrastructure/todo/todo_exception.dart';

abstract class ToDoDataSource {
  /// Open a ToDo events stream
  ///
  /// Throws a [ToDoException] for all error codes.
  Stream<List<Map<String, dynamic>>> openToDoStream();

  /// Add a new todo
  ///
  /// Throws a [ToDoException] for all error codes.
  Future<bool> addTodo(String title);

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
  Stream<List<Map<String, dynamic>>> openToDoStream() => _client
      .from('todos')
      .stream(['todo_id'])
      .order('todo_created_at', ascending: true)
      .execute();

  @override
  Future<bool> addTodo(String title) async {
    final response =
        await _client.from('todos').insert({'todo_title': title}).execute();
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
