// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ToDoStateTearOff {
  const _$ToDoStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ListsReceved listsReceved(List<ToDoList> todoLists) {
    return _ListsReceved(
      todoLists,
    );
  }

  _Updated updated(List<ToDoList>? todoLists, List<ToDo> todos) {
    return _Updated(
      todoLists,
      todos,
    );
  }

  _Error error(String? message,
      [List<ToDoList>? todoLists, List<ToDo>? todos]) {
    return _Error(
      message,
      todoLists,
      todos,
    );
  }
}

/// @nodoc
const $ToDoState = _$ToDoStateTearOff();

/// @nodoc
mixin _$ToDoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ToDoList> todoLists) listsReceved,
    required TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)
        updated,
    required TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ToDoList> todoLists)? listsReceved,
    TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)? updated,
    TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ToDoList> todoLists)? listsReceved,
    TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)? updated,
    TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListsReceved value) listsReceved,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListsReceved value)? listsReceved,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListsReceved value)? listsReceved,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoStateCopyWith<$Res> {
  factory $ToDoStateCopyWith(ToDoState value, $Res Function(ToDoState) then) =
      _$ToDoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToDoStateCopyWithImpl<$Res> implements $ToDoStateCopyWith<$Res> {
  _$ToDoStateCopyWithImpl(this._value, this._then);

  final ToDoState _value;
  // ignore: unused_field
  final $Res Function(ToDoState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ToDoStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ToDoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ToDoList> todoLists) listsReceved,
    required TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)
        updated,
    required TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)
        error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ToDoList> todoLists)? listsReceved,
    TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)? updated,
    TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)?
        error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ToDoList> todoLists)? listsReceved,
    TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)? updated,
    TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListsReceved value) listsReceved,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListsReceved value)? listsReceved,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListsReceved value)? listsReceved,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ToDoState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ListsRecevedCopyWith<$Res> {
  factory _$ListsRecevedCopyWith(
          _ListsReceved value, $Res Function(_ListsReceved) then) =
      __$ListsRecevedCopyWithImpl<$Res>;
  $Res call({List<ToDoList> todoLists});
}

/// @nodoc
class __$ListsRecevedCopyWithImpl<$Res> extends _$ToDoStateCopyWithImpl<$Res>
    implements _$ListsRecevedCopyWith<$Res> {
  __$ListsRecevedCopyWithImpl(
      _ListsReceved _value, $Res Function(_ListsReceved) _then)
      : super(_value, (v) => _then(v as _ListsReceved));

  @override
  _ListsReceved get _value => super._value as _ListsReceved;

  @override
  $Res call({
    Object? todoLists = freezed,
  }) {
    return _then(_ListsReceved(
      todoLists == freezed
          ? _value.todoLists
          : todoLists // ignore: cast_nullable_to_non_nullable
              as List<ToDoList>,
    ));
  }
}

/// @nodoc

class _$_ListsReceved implements _ListsReceved {
  const _$_ListsReceved(this.todoLists);

  @override
  final List<ToDoList> todoLists;

  @override
  String toString() {
    return 'ToDoState.listsReceved(todoLists: $todoLists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListsReceved &&
            const DeepCollectionEquality().equals(other.todoLists, todoLists));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todoLists));

  @JsonKey(ignore: true)
  @override
  _$ListsRecevedCopyWith<_ListsReceved> get copyWith =>
      __$ListsRecevedCopyWithImpl<_ListsReceved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ToDoList> todoLists) listsReceved,
    required TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)
        updated,
    required TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)
        error,
  }) {
    return listsReceved(todoLists);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ToDoList> todoLists)? listsReceved,
    TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)? updated,
    TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)?
        error,
  }) {
    return listsReceved?.call(todoLists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ToDoList> todoLists)? listsReceved,
    TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)? updated,
    TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)?
        error,
    required TResult orElse(),
  }) {
    if (listsReceved != null) {
      return listsReceved(todoLists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListsReceved value) listsReceved,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) {
    return listsReceved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListsReceved value)? listsReceved,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
  }) {
    return listsReceved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListsReceved value)? listsReceved,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (listsReceved != null) {
      return listsReceved(this);
    }
    return orElse();
  }
}

abstract class _ListsReceved implements ToDoState {
  const factory _ListsReceved(List<ToDoList> todoLists) = _$_ListsReceved;

  List<ToDoList> get todoLists;
  @JsonKey(ignore: true)
  _$ListsRecevedCopyWith<_ListsReceved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatedCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) then) =
      __$UpdatedCopyWithImpl<$Res>;
  $Res call({List<ToDoList>? todoLists, List<ToDo> todos});
}

/// @nodoc
class __$UpdatedCopyWithImpl<$Res> extends _$ToDoStateCopyWithImpl<$Res>
    implements _$UpdatedCopyWith<$Res> {
  __$UpdatedCopyWithImpl(_Updated _value, $Res Function(_Updated) _then)
      : super(_value, (v) => _then(v as _Updated));

  @override
  _Updated get _value => super._value as _Updated;

  @override
  $Res call({
    Object? todoLists = freezed,
    Object? todos = freezed,
  }) {
    return _then(_Updated(
      todoLists == freezed
          ? _value.todoLists
          : todoLists // ignore: cast_nullable_to_non_nullable
              as List<ToDoList>?,
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<ToDo>,
    ));
  }
}

/// @nodoc

class _$_Updated implements _Updated {
  const _$_Updated(this.todoLists, this.todos);

  @override
  final List<ToDoList>? todoLists;
  @override
  final List<ToDo> todos;

  @override
  String toString() {
    return 'ToDoState.updated(todoLists: $todoLists, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Updated &&
            const DeepCollectionEquality().equals(other.todoLists, todoLists) &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(todoLists),
      const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  _$UpdatedCopyWith<_Updated> get copyWith =>
      __$UpdatedCopyWithImpl<_Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ToDoList> todoLists) listsReceved,
    required TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)
        updated,
    required TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)
        error,
  }) {
    return updated(todoLists, todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ToDoList> todoLists)? listsReceved,
    TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)? updated,
    TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)?
        error,
  }) {
    return updated?.call(todoLists, todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ToDoList> todoLists)? listsReceved,
    TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)? updated,
    TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)?
        error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(todoLists, todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListsReceved value) listsReceved,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListsReceved value)? listsReceved,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListsReceved value)? listsReceved,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements ToDoState {
  const factory _Updated(List<ToDoList>? todoLists, List<ToDo> todos) =
      _$_Updated;

  List<ToDoList>? get todoLists;
  List<ToDo> get todos;
  @JsonKey(ignore: true)
  _$UpdatedCopyWith<_Updated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String? message, List<ToDoList>? todoLists, List<ToDo>? todos});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ToDoStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? message = freezed,
    Object? todoLists = freezed,
    Object? todos = freezed,
  }) {
    return _then(_Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      todoLists == freezed
          ? _value.todoLists
          : todoLists // ignore: cast_nullable_to_non_nullable
              as List<ToDoList>?,
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<ToDo>?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.message, [this.todoLists, this.todos]);

  @override
  final String? message;
  @override
  final List<ToDoList>? todoLists;
  @override
  final List<ToDo>? todos;

  @override
  String toString() {
    return 'ToDoState.error(message: $message, todoLists: $todoLists, todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.todoLists, todoLists) &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(todoLists),
      const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<ToDoList> todoLists) listsReceved,
    required TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)
        updated,
    required TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)
        error,
  }) {
    return error(message, todoLists, todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ToDoList> todoLists)? listsReceved,
    TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)? updated,
    TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)?
        error,
  }) {
    return error?.call(message, todoLists, todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<ToDoList> todoLists)? listsReceved,
    TResult Function(List<ToDoList>? todoLists, List<ToDo> todos)? updated,
    TResult Function(
            String? message, List<ToDoList>? todoLists, List<ToDo>? todos)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, todoLists, todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ListsReceved value) listsReceved,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListsReceved value)? listsReceved,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ListsReceved value)? listsReceved,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ToDoState {
  const factory _Error(String? message,
      [List<ToDoList>? todoLists, List<ToDo>? todos]) = _$_Error;

  String? get message;
  List<ToDoList>? get todoLists;
  List<ToDo>? get todos;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
