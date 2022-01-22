import 'package:dartz/dartz.dart';
import 'package:supabase_todo/domain/todo/todo_failure.dart';
import 'package:supabase_todo/domain/todo/todo_list.dart';

abstract class IToDoRepository {
  Future<Either<ToDoFailure, List<ToDoList>>> getToDoLists();
  Stream<List<Map<String, dynamic>>> openToDoStream(int toDoListId);
  Future<Either<ToDoFailure, bool>> addToDo(int todoListId, String title);
  Future<Either<ToDoFailure, bool>> finishToDo(int toDoId);
}
