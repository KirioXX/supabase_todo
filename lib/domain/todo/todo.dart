// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.g.dart';
part 'todo.freezed.dart';

@freezed
class ToDo with _$ToDo {
  const factory ToDo({
    @JsonKey(name: 'todo_id') required int id,
    @JsonKey(name: 'todo_title') required String name,
    @JsonKey(name: 'todo_is_done') required bool isDone,
  }) = _ToDo;

  factory ToDo.fromJson(Map<String, dynamic> json) => _$ToDoFromJson(json);
}
