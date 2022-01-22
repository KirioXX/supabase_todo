// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ToDo _$ToDoFromJson(Map<String, dynamic> json) {
  return _ToDo.fromJson(json);
}

/// @nodoc
class _$ToDoTearOff {
  const _$ToDoTearOff();

  _ToDo call(
      {@JsonKey(name: 'todo_id') required int id,
      @JsonKey(name: 'todo_title') required String name,
      @JsonKey(name: 'todo_is_done') required bool isDone,
      @JsonKey(name: 'todo_list_id') required int todoListId}) {
    return _ToDo(
      id: id,
      name: name,
      isDone: isDone,
      todoListId: todoListId,
    );
  }

  ToDo fromJson(Map<String, Object?> json) {
    return ToDo.fromJson(json);
  }
}

/// @nodoc
const $ToDo = _$ToDoTearOff();

/// @nodoc
mixin _$ToDo {
  @JsonKey(name: 'todo_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'todo_title')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'todo_is_done')
  bool get isDone => throw _privateConstructorUsedError;
  @JsonKey(name: 'todo_list_id')
  int get todoListId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToDoCopyWith<ToDo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoCopyWith<$Res> {
  factory $ToDoCopyWith(ToDo value, $Res Function(ToDo) then) =
      _$ToDoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'todo_id') int id,
      @JsonKey(name: 'todo_title') String name,
      @JsonKey(name: 'todo_is_done') bool isDone,
      @JsonKey(name: 'todo_list_id') int todoListId});
}

/// @nodoc
class _$ToDoCopyWithImpl<$Res> implements $ToDoCopyWith<$Res> {
  _$ToDoCopyWithImpl(this._value, this._then);

  final ToDo _value;
  // ignore: unused_field
  final $Res Function(ToDo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isDone = freezed,
    Object? todoListId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      todoListId: todoListId == freezed
          ? _value.todoListId
          : todoListId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ToDoCopyWith<$Res> implements $ToDoCopyWith<$Res> {
  factory _$ToDoCopyWith(_ToDo value, $Res Function(_ToDo) then) =
      __$ToDoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'todo_id') int id,
      @JsonKey(name: 'todo_title') String name,
      @JsonKey(name: 'todo_is_done') bool isDone,
      @JsonKey(name: 'todo_list_id') int todoListId});
}

/// @nodoc
class __$ToDoCopyWithImpl<$Res> extends _$ToDoCopyWithImpl<$Res>
    implements _$ToDoCopyWith<$Res> {
  __$ToDoCopyWithImpl(_ToDo _value, $Res Function(_ToDo) _then)
      : super(_value, (v) => _then(v as _ToDo));

  @override
  _ToDo get _value => super._value as _ToDo;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isDone = freezed,
    Object? todoListId = freezed,
  }) {
    return _then(_ToDo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      todoListId: todoListId == freezed
          ? _value.todoListId
          : todoListId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ToDo implements _ToDo {
  const _$_ToDo(
      {@JsonKey(name: 'todo_id') required this.id,
      @JsonKey(name: 'todo_title') required this.name,
      @JsonKey(name: 'todo_is_done') required this.isDone,
      @JsonKey(name: 'todo_list_id') required this.todoListId});

  factory _$_ToDo.fromJson(Map<String, dynamic> json) => _$$_ToDoFromJson(json);

  @override
  @JsonKey(name: 'todo_id')
  final int id;
  @override
  @JsonKey(name: 'todo_title')
  final String name;
  @override
  @JsonKey(name: 'todo_is_done')
  final bool isDone;
  @override
  @JsonKey(name: 'todo_list_id')
  final int todoListId;

  @override
  String toString() {
    return 'ToDo(id: $id, name: $name, isDone: $isDone, todoListId: $todoListId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToDo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.isDone, isDone) &&
            const DeepCollectionEquality()
                .equals(other.todoListId, todoListId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(isDone),
      const DeepCollectionEquality().hash(todoListId));

  @JsonKey(ignore: true)
  @override
  _$ToDoCopyWith<_ToDo> get copyWith =>
      __$ToDoCopyWithImpl<_ToDo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ToDoToJson(this);
  }
}

abstract class _ToDo implements ToDo {
  const factory _ToDo(
      {@JsonKey(name: 'todo_id') required int id,
      @JsonKey(name: 'todo_title') required String name,
      @JsonKey(name: 'todo_is_done') required bool isDone,
      @JsonKey(name: 'todo_list_id') required int todoListId}) = _$_ToDo;

  factory _ToDo.fromJson(Map<String, dynamic> json) = _$_ToDo.fromJson;

  @override
  @JsonKey(name: 'todo_id')
  int get id;
  @override
  @JsonKey(name: 'todo_title')
  String get name;
  @override
  @JsonKey(name: 'todo_is_done')
  bool get isDone;
  @override
  @JsonKey(name: 'todo_list_id')
  int get todoListId;
  @override
  @JsonKey(ignore: true)
  _$ToDoCopyWith<_ToDo> get copyWith => throw _privateConstructorUsedError;
}
