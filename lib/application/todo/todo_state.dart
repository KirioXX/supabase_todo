part of 'todo_cubit.dart';

@freezed
class ToDoState with _$ToDoState {
  const factory ToDoState.initial() = _Initial;
  const factory ToDoState.listsReceved(List<ToDoList> todoLists) =
      _ListsReceved;
  const factory ToDoState.updated(List<ToDoList>? todoLists, List<ToDo> todos) =
      _Updated;
  const factory ToDoState.error(String? message,
      [List<ToDoList>? todoLists, List<ToDo>? todos]) = _Error;
}
