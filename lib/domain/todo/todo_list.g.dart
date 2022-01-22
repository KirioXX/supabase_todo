// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToDoList _$$_ToDoListFromJson(Map<String, dynamic> json) => _$_ToDoList(
      id: json['todo_list_id'] as int,
      name: json['todo_list_title'] as String,
    );

Map<String, dynamic> _$$_ToDoListToJson(_$_ToDoList instance) =>
    <String, dynamic>{
      'todo_list_id': instance.id,
      'todo_list_title': instance.name,
    };
