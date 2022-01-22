import 'package:dartz/dartz.dart';
import 'package:supabase_todo/domain/todo/i_todo_repository.dart';
import 'package:supabase_todo/domain/todo/todo_failure.dart';
import 'package:supabase_todo/infrastructure/todo/todo_datasource.dart';
import 'package:supabase_todo/infrastructure/todo/todo_exception.dart';

class ToDoRepositoryImpl implements IToDoRepository {
  final ToDoDataSource _remoteDataSource;

  const ToDoRepositoryImpl(this._remoteDataSource);

  @override
  Stream<List<Map<String, dynamic>>> openToDoStream() =>
      _remoteDataSource.openToDoStream();

  @override
  Future<Either<ToDoFailure, bool>> addToDo(String title) async {
    try {
      return Right(await _remoteDataSource.addTodo(title));
    } on ToDoException catch (e) {
      return Left(ToDoFailure.unexpected(e.message));
    }
  }

  @override
  Future<Either<ToDoFailure, bool>> finishToDo(int toDoId) async {
    try {
      return Right(await _remoteDataSource.finishToDo(toDoId));
    } on ToDoException catch (e) {
      return Left(ToDoFailure.unexpected(e.message));
    }
  }
}
