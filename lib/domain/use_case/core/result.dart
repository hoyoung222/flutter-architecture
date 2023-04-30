import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/result.freezed.dart';

@freezed
class Result<T> with _$Result {
  const factory Result.success({required T data}) = ResultSuccess;

  const factory Result.error({Object? error}) = ResultError;
}
