import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_exception.freezed.dart';

@freezed
class ToDoException with _$ToDoException {
  const factory ToDoException.unexpected(String? message) = Unexpected;
  const factory ToDoException.notFound(String? message) = NotFound;
}
