// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoItemSate {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  bool? get isDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoItemSateCopyWith<TodoItemSate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemSateCopyWith<$Res> {
  factory $TodoItemSateCopyWith(
          TodoItemSate value, $Res Function(TodoItemSate) then) =
      _$TodoItemSateCopyWithImpl<$Res, TodoItemSate>;
  @useResult
  $Res call({int? id, String? title, bool? isDone});
}

/// @nodoc
class _$TodoItemSateCopyWithImpl<$Res, $Val extends TodoItemSate>
    implements $TodoItemSateCopyWith<$Res> {
  _$TodoItemSateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isDone: freezed == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoItemSateCopyWith<$Res>
    implements $TodoItemSateCopyWith<$Res> {
  factory _$$_TodoItemSateCopyWith(
          _$_TodoItemSate value, $Res Function(_$_TodoItemSate) then) =
      __$$_TodoItemSateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, bool? isDone});
}

/// @nodoc
class __$$_TodoItemSateCopyWithImpl<$Res>
    extends _$TodoItemSateCopyWithImpl<$Res, _$_TodoItemSate>
    implements _$$_TodoItemSateCopyWith<$Res> {
  __$$_TodoItemSateCopyWithImpl(
      _$_TodoItemSate _value, $Res Function(_$_TodoItemSate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_$_TodoItemSate(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isDone: freezed == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_TodoItemSate implements _TodoItemSate {
  const _$_TodoItemSate({this.id, this.title, this.isDone = false});

  @override
  final int? id;
  @override
  final String? title;
  @override
  @JsonKey()
  final bool? isDone;

  @override
  String toString() {
    return 'TodoItemSate(id: $id, title: $title, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoItemSate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoItemSateCopyWith<_$_TodoItemSate> get copyWith =>
      __$$_TodoItemSateCopyWithImpl<_$_TodoItemSate>(this, _$identity);
}

abstract class _TodoItemSate implements TodoItemSate {
  const factory _TodoItemSate(
      {final int? id,
      final String? title,
      final bool? isDone}) = _$_TodoItemSate;

  @override
  int? get id;
  @override
  String? get title;
  @override
  bool? get isDone;
  @override
  @JsonKey(ignore: true)
  _$$_TodoItemSateCopyWith<_$_TodoItemSate> get copyWith =>
      throw _privateConstructorUsedError;
}
