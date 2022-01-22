part of 'todo_cubit.dart';

@freezed
class ToDoState with _$ToDoState {
  const factory ToDoState.initial() = _Initial;
  const factory ToDoState.updated(List<ToDo> todos) = _Updated;
  const factory ToDoState.error(String? message, [List<ToDo>? todos]) = _Error;
}
