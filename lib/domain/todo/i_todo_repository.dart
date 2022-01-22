import 'package:dartz/dartz.dart';
import 'package:supabase_todo/domain/todo/todo_failure.dart';

abstract class IToDoRepository {
  Stream<List<Map<String, dynamic>>> openToDoStream();
  Future<Either<ToDoFailure, bool>> addToDo(String title);
  Future<Either<ToDoFailure, bool>> finishToDo(int toDoId);
}
