// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiException {
  Exception get rawException => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Exception rawException, int statusCode, String message)
        badResponse,
    required TResult Function(Exception rawException, String message) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception rawException, int statusCode, String message)?
        badResponse,
    TResult? Function(Exception rawException, String message)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception rawException, int statusCode, String message)?
        badResponse,
    TResult Function(Exception rawException, String message)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiExceptionBadResponse value) badResponse,
    required TResult Function(ApiExceptionOther value) other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiExceptionBadResponse value)? badResponse,
    TResult? Function(ApiExceptionOther value)? other,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiExceptionBadResponse value)? badResponse,
    TResult Function(ApiExceptionOther value)? other,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiExceptionCopyWith<ApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(
          ApiException value, $Res Function(ApiException) then) =
      _$ApiExceptionCopyWithImpl<$Res, ApiException>;
  @useResult
  $Res call({Exception rawException, String message});
}

/// @nodoc
class _$ApiExceptionCopyWithImpl<$Res, $Val extends ApiException>
    implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawException = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      rawException: null == rawException
          ? _value.rawException
          : rawException // ignore: cast_nullable_to_non_nullable
              as Exception,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiExceptionBadResponseCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$ApiExceptionBadResponseCopyWith(_$ApiExceptionBadResponse value,
          $Res Function(_$ApiExceptionBadResponse) then) =
      __$$ApiExceptionBadResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Exception rawException, int statusCode, String message});
}

/// @nodoc
class __$$ApiExceptionBadResponseCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$ApiExceptionBadResponse>
    implements _$$ApiExceptionBadResponseCopyWith<$Res> {
  __$$ApiExceptionBadResponseCopyWithImpl(_$ApiExceptionBadResponse _value,
      $Res Function(_$ApiExceptionBadResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawException = null,
    Object? statusCode = null,
    Object? message = null,
  }) {
    return _then(_$ApiExceptionBadResponse(
      null == rawException
          ? _value.rawException
          : rawException // ignore: cast_nullable_to_non_nullable
              as Exception,
      null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiExceptionBadResponse extends ApiExceptionBadResponse {
  const _$ApiExceptionBadResponse(
      this.rawException, this.statusCode, this.message)
      : super._();

  @override
  final Exception rawException;
  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.badResponse(rawException: $rawException, statusCode: $statusCode, message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiExceptionBadResponseCopyWith<_$ApiExceptionBadResponse> get copyWith =>
      __$$ApiExceptionBadResponseCopyWithImpl<_$ApiExceptionBadResponse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Exception rawException, int statusCode, String message)
        badResponse,
    required TResult Function(Exception rawException, String message) other,
  }) {
    return badResponse(rawException, statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception rawException, int statusCode, String message)?
        badResponse,
    TResult? Function(Exception rawException, String message)? other,
  }) {
    return badResponse?.call(rawException, statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception rawException, int statusCode, String message)?
        badResponse,
    TResult Function(Exception rawException, String message)? other,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(rawException, statusCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiExceptionBadResponse value) badResponse,
    required TResult Function(ApiExceptionOther value) other,
  }) {
    return badResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiExceptionBadResponse value)? badResponse,
    TResult? Function(ApiExceptionOther value)? other,
  }) {
    return badResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiExceptionBadResponse value)? badResponse,
    TResult Function(ApiExceptionOther value)? other,
    required TResult orElse(),
  }) {
    if (badResponse != null) {
      return badResponse(this);
    }
    return orElse();
  }
}

abstract class ApiExceptionBadResponse extends ApiException {
  const factory ApiExceptionBadResponse(final Exception rawException,
      final int statusCode, final String message) = _$ApiExceptionBadResponse;
  const ApiExceptionBadResponse._() : super._();

  @override
  Exception get rawException;
  int get statusCode;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ApiExceptionBadResponseCopyWith<_$ApiExceptionBadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiExceptionOtherCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$ApiExceptionOtherCopyWith(
          _$ApiExceptionOther value, $Res Function(_$ApiExceptionOther) then) =
      __$$ApiExceptionOtherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Exception rawException, String message});
}

/// @nodoc
class __$$ApiExceptionOtherCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$ApiExceptionOther>
    implements _$$ApiExceptionOtherCopyWith<$Res> {
  __$$ApiExceptionOtherCopyWithImpl(
      _$ApiExceptionOther _value, $Res Function(_$ApiExceptionOther) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawException = null,
    Object? message = null,
  }) {
    return _then(_$ApiExceptionOther(
      null == rawException
          ? _value.rawException
          : rawException // ignore: cast_nullable_to_non_nullable
              as Exception,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiExceptionOther extends ApiExceptionOther {
  const _$ApiExceptionOther(this.rawException, this.message) : super._();

  @override
  final Exception rawException;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.other(rawException: $rawException, message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiExceptionOtherCopyWith<_$ApiExceptionOther> get copyWith =>
      __$$ApiExceptionOtherCopyWithImpl<_$ApiExceptionOther>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Exception rawException, int statusCode, String message)
        badResponse,
    required TResult Function(Exception rawException, String message) other,
  }) {
    return other(rawException, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Exception rawException, int statusCode, String message)?
        badResponse,
    TResult? Function(Exception rawException, String message)? other,
  }) {
    return other?.call(rawException, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Exception rawException, int statusCode, String message)?
        badResponse,
    TResult Function(Exception rawException, String message)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(rawException, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiExceptionBadResponse value) badResponse,
    required TResult Function(ApiExceptionOther value) other,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiExceptionBadResponse value)? badResponse,
    TResult? Function(ApiExceptionOther value)? other,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiExceptionBadResponse value)? badResponse,
    TResult Function(ApiExceptionOther value)? other,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class ApiExceptionOther extends ApiException {
  const factory ApiExceptionOther(
      final Exception rawException, final String message) = _$ApiExceptionOther;
  const ApiExceptionOther._() : super._();

  @override
  Exception get rawException;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ApiExceptionOtherCopyWith<_$ApiExceptionOther> get copyWith =>
      throw _privateConstructorUsedError;
}
