// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_list.g.dart';
part 'todo_list.freezed.dart';

@freezed
class ToDoList with _$ToDoList {
  const factory ToDoList({
    @JsonKey(name: 'todo_list_id') required int id,
    @JsonKey(name: 'todo_list_title') required String name,
  }) = _ToDoList;

  factory ToDoList.fromJson(Map<String, dynamic> json) =>
      _$ToDoListFromJson(json);
}
