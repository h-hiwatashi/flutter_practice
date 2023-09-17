// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_state.freezed.dart';

@freezed
class ResponseState<T> with _$ResponseState<T> {
  const factory ResponseState.initial() = Initial<T>;
  const factory ResponseState.loading() = Loading<T>;
  const factory ResponseState.update([T? value]) = Update<T>;
  const factory ResponseState.data({required T value}) = Data<T>;
  const factory ResponseState.error([String? error]) = Error<T>;
}
