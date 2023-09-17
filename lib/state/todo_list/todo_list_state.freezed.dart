// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoListState {
  int? get id => throw _privateConstructorUsedError;
  List<TodoItemSate>? get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoListStateCopyWith<TodoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) then) =
      _$TodoListStateCopyWithImpl<$Res, TodoListState>;
  @useResult
  $Res call({int? id, List<TodoItemSate>? list});
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res, $Val extends TodoListState>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<TodoItemSate>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoListStateCopyWith<$Res>
    implements $TodoListStateCopyWith<$Res> {
  factory _$$_TodoListStateCopyWith(
          _$_TodoListState value, $Res Function(_$_TodoListState) then) =
      __$$_TodoListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<TodoItemSate>? list});
}

/// @nodoc
class __$$_TodoListStateCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res, _$_TodoListState>
    implements _$$_TodoListStateCopyWith<$Res> {
  __$$_TodoListStateCopyWithImpl(
      _$_TodoListState _value, $Res Function(_$_TodoListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? list = freezed,
  }) {
    return _then(_$_TodoListState(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<TodoItemSate>?,
    ));
  }
}

/// @nodoc

class _$_TodoListState implements _TodoListState {
  const _$_TodoListState({this.id, final List<TodoItemSate>? list})
      : _list = list;

  @override
  final int? id;
  final List<TodoItemSate>? _list;
  @override
  List<TodoItemSate>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodoListState(id: $id, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoListState &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoListStateCopyWith<_$_TodoListState> get copyWith =>
      __$$_TodoListStateCopyWithImpl<_$_TodoListState>(this, _$identity);
}

abstract class _TodoListState implements TodoListState {
  const factory _TodoListState(
      {final int? id, final List<TodoItemSate>? list}) = _$_TodoListState;

  @override
  int? get id;
  @override
  List<TodoItemSate>? get list;
  @override
  @JsonKey(ignore: true)
  _$$_TodoListStateCopyWith<_$_TodoListState> get copyWith =>
      throw _privateConstructorUsedError;
}
