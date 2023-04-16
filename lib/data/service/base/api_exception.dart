import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/api_exception.freezed.dart';

@Freezed(equal: false)
class ApiException with _$ApiException implements Exception {
  const ApiException._();

  const factory ApiException.badResponse(
    Exception rawException,
    int statusCode,
    String message,
  ) = ApiExceptionBadResponse;

  const factory ApiException.other(Exception rawException, String message) = ApiExceptionOther;
}
