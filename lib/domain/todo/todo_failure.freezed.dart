// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ToDoFailureTearOff {
  const _$ToDoFailureTearOff();

  Unexpected unexpected(String? message) {
    return Unexpected(
      message,
    );
  }

  NotFound notFound(String? message) {
    return NotFound(
      message,
    );
  }
}

/// @nodoc
const $ToDoFailure = _$ToDoFailureTearOff();

/// @nodoc
mixin _$ToDoFailure {
  String? get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unexpected,
    required TResult Function(String? message) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function(String? message)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function(String? message)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(NotFound value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(NotFound value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToDoFailureCopyWith<ToDoFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoFailureCopyWith<$Res> {
  factory $ToDoFailureCopyWith(
          ToDoFailure value, $Res Function(ToDoFailure) then) =
      _$ToDoFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$ToDoFailureCopyWithImpl<$Res> implements $ToDoFailureCopyWith<$Res> {
  _$ToDoFailureCopyWithImpl(this._value, this._then);

  final ToDoFailure _value;
  // ignore: unused_field
  final $Res Function(ToDoFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $UnexpectedCopyWith<$Res> implements $ToDoFailureCopyWith<$Res> {
  factory $UnexpectedCopyWith(
          Unexpected value, $Res Function(Unexpected) then) =
      _$UnexpectedCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$UnexpectedCopyWithImpl<$Res> extends _$ToDoFailureCopyWithImpl<$Res>
    implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(Unexpected _value, $Res Function(Unexpected) _then)
      : super(_value, (v) => _then(v as Unexpected));

  @override
  Unexpected get _value => super._value as Unexpected;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(Unexpected(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Unexpected implements Unexpected {
  const _$Unexpected(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'ToDoFailure.unexpected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Unexpected &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $UnexpectedCopyWith<Unexpected> get copyWith =>
      _$UnexpectedCopyWithImpl<Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unexpected,
    required TResult Function(String? message) notFound,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function(String? message)? notFound,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function(String? message)? notFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(NotFound value) notFound,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(NotFound value)? notFound,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements ToDoFailure {
  const factory Unexpected(String? message) = _$Unexpected;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $UnexpectedCopyWith<Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotFoundCopyWith<$Res> implements $ToDoFailureCopyWith<$Res> {
  factory $NotFoundCopyWith(NotFound value, $Res Function(NotFound) then) =
      _$NotFoundCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$NotFoundCopyWithImpl<$Res> extends _$ToDoFailureCopyWithImpl<$Res>
    implements $NotFoundCopyWith<$Res> {
  _$NotFoundCopyWithImpl(NotFound _value, $Res Function(NotFound) _then)
      : super(_value, (v) => _then(v as NotFound));

  @override
  NotFound get _value => super._value as NotFound;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(NotFound(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NotFound implements NotFound {
  const _$NotFound(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'ToDoFailure.notFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotFound &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $NotFoundCopyWith<NotFound> get copyWith =>
      _$NotFoundCopyWithImpl<NotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unexpected,
    required TResult Function(String? message) notFound,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function(String? message)? notFound,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function(String? message)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(NotFound value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(NotFound value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unexpected value)? unexpected,
    TResult Function(NotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements ToDoFailure {
  const factory NotFound(String? message) = _$NotFound;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $NotFoundCopyWith<NotFound> get copyWith =>
      throw _privateConstructorUsedError;
}
