import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse({
    required T data,
  }) = _ApiResponse<T>;
}
