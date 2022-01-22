import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_failure.freezed.dart';

@freezed
class ToDoFailure with _$ToDoFailure {
  const factory ToDoFailure.unexpected(String? message) = Unexpected;
  const factory ToDoFailure.notFound(String? message) = NotFound;
}
