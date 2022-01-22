// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToDo _$$_ToDoFromJson(Map<String, dynamic> json) => _$_ToDo(
      id: json['todo_id'] as int,
      name: json['todo_title'] as String,
      isDone: json['todo_is_done'] as bool,
    );

Map<String, dynamic> _$$_ToDoToJson(_$_ToDo instance) => <String, dynamic>{
      'todo_id': instance.id,
      'todo_title': instance.name,
      'todo_is_done': instance.isDone,
    };
