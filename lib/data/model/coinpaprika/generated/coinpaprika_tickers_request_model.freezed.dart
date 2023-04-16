// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../coinpaprika_tickers_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoinpaprikaTickersRequestModel {
  Set<CoinpaprikaQuoteType> get quotes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoinpaprikaTickersRequestModelCopyWith<CoinpaprikaTickersRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinpaprikaTickersRequestModelCopyWith<$Res> {
  factory $CoinpaprikaTickersRequestModelCopyWith(
          CoinpaprikaTickersRequestModel value,
          $Res Function(CoinpaprikaTickersRequestModel) then) =
      _$CoinpaprikaTickersRequestModelCopyWithImpl<$Res,
          CoinpaprikaTickersRequestModel>;
  @useResult
  $Res call({Set<CoinpaprikaQuoteType> quotes});
}

/// @nodoc
class _$CoinpaprikaTickersRequestModelCopyWithImpl<$Res,
        $Val extends CoinpaprikaTickersRequestModel>
    implements $CoinpaprikaTickersRequestModelCopyWith<$Res> {
  _$CoinpaprikaTickersRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotes = null,
  }) {
    return _then(_value.copyWith(
      quotes: null == quotes
          ? _value.quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as Set<CoinpaprikaQuoteType>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinpaprikaTickersRequestModelCopyWith<$Res>
    implements $CoinpaprikaTickersRequestModelCopyWith<$Res> {
  factory _$$_CoinpaprikaTickersRequestModelCopyWith(
          _$_CoinpaprikaTickersRequestModel value,
          $Res Function(_$_CoinpaprikaTickersRequestModel) then) =
      __$$_CoinpaprikaTickersRequestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<CoinpaprikaQuoteType> quotes});
}

/// @nodoc
class __$$_CoinpaprikaTickersRequestModelCopyWithImpl<$Res>
    extends _$CoinpaprikaTickersRequestModelCopyWithImpl<$Res,
        _$_CoinpaprikaTickersRequestModel>
    implements _$$_CoinpaprikaTickersRequestModelCopyWith<$Res> {
  __$$_CoinpaprikaTickersRequestModelCopyWithImpl(
      _$_CoinpaprikaTickersRequestModel _value,
      $Res Function(_$_CoinpaprikaTickersRequestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotes = null,
  }) {
    return _then(_$_CoinpaprikaTickersRequestModel(
      quotes: null == quotes
          ? _value._quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as Set<CoinpaprikaQuoteType>,
    ));
  }
}

/// @nodoc

class _$_CoinpaprikaTickersRequestModel
    extends _CoinpaprikaTickersRequestModel {
  const _$_CoinpaprikaTickersRequestModel(
      {required final Set<CoinpaprikaQuoteType> quotes})
      : _quotes = quotes,
        super._();

  final Set<CoinpaprikaQuoteType> _quotes;
  @override
  Set<CoinpaprikaQuoteType> get quotes {
    if (_quotes is EqualUnmodifiableSetView) return _quotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_quotes);
  }

  @override
  String toString() {
    return 'CoinpaprikaTickersRequestModel(quotes: $quotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinpaprikaTickersRequestModel &&
            const DeepCollectionEquality().equals(other._quotes, _quotes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_quotes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinpaprikaTickersRequestModelCopyWith<_$_CoinpaprikaTickersRequestModel>
      get copyWith => __$$_CoinpaprikaTickersRequestModelCopyWithImpl<
          _$_CoinpaprikaTickersRequestModel>(this, _$identity);
}

abstract class _CoinpaprikaTickersRequestModel
    extends CoinpaprikaTickersRequestModel {
  const factory _CoinpaprikaTickersRequestModel(
          {required final Set<CoinpaprikaQuoteType> quotes}) =
      _$_CoinpaprikaTickersRequestModel;
  const _CoinpaprikaTickersRequestModel._() : super._();

  @override
  Set<CoinpaprikaQuoteType> get quotes;
  @override
  @JsonKey(ignore: true)
  _$$_CoinpaprikaTickersRequestModelCopyWith<_$_CoinpaprikaTickersRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}
