// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../coinpaprika_quote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoinpaprikaQuoteModel _$CoinpaprikaQuoteModelFromJson(
    Map<String, dynamic> json) {
  return _CoinpaprikaQuoteModel.fromJson(json);
}

/// @nodoc
mixin _$CoinpaprikaQuoteModel {
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: "market_cap")
  double get marketCap => throw _privateConstructorUsedError;
  @JsonKey(name: "volume_24h")
  double get volume24h => throw _privateConstructorUsedError;
  @JsonKey(name: "percent_change_24h")
  double get percentChange24h => throw _privateConstructorUsedError;
  @JsonKey(name: "percent_change_7d")
  double get percentChange7d => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinpaprikaQuoteModelCopyWith<CoinpaprikaQuoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinpaprikaQuoteModelCopyWith<$Res> {
  factory $CoinpaprikaQuoteModelCopyWith(CoinpaprikaQuoteModel value,
          $Res Function(CoinpaprikaQuoteModel) then) =
      _$CoinpaprikaQuoteModelCopyWithImpl<$Res, CoinpaprikaQuoteModel>;
  @useResult
  $Res call(
      {double price,
      @JsonKey(name: "market_cap") double marketCap,
      @JsonKey(name: "volume_24h") double volume24h,
      @JsonKey(name: "percent_change_24h") double percentChange24h,
      @JsonKey(name: "percent_change_7d") double percentChange7d});
}

/// @nodoc
class _$CoinpaprikaQuoteModelCopyWithImpl<$Res,
        $Val extends CoinpaprikaQuoteModel>
    implements $CoinpaprikaQuoteModelCopyWith<$Res> {
  _$CoinpaprikaQuoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? marketCap = null,
    Object? volume24h = null,
    Object? percentChange24h = null,
    Object? percentChange7d = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: null == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
      volume24h: null == volume24h
          ? _value.volume24h
          : volume24h // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange24h: null == percentChange24h
          ? _value.percentChange24h
          : percentChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange7d: null == percentChange7d
          ? _value.percentChange7d
          : percentChange7d // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinpaprikaQuoteModelCopyWith<$Res>
    implements $CoinpaprikaQuoteModelCopyWith<$Res> {
  factory _$$_CoinpaprikaQuoteModelCopyWith(_$_CoinpaprikaQuoteModel value,
          $Res Function(_$_CoinpaprikaQuoteModel) then) =
      __$$_CoinpaprikaQuoteModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double price,
      @JsonKey(name: "market_cap") double marketCap,
      @JsonKey(name: "volume_24h") double volume24h,
      @JsonKey(name: "percent_change_24h") double percentChange24h,
      @JsonKey(name: "percent_change_7d") double percentChange7d});
}

/// @nodoc
class __$$_CoinpaprikaQuoteModelCopyWithImpl<$Res>
    extends _$CoinpaprikaQuoteModelCopyWithImpl<$Res, _$_CoinpaprikaQuoteModel>
    implements _$$_CoinpaprikaQuoteModelCopyWith<$Res> {
  __$$_CoinpaprikaQuoteModelCopyWithImpl(_$_CoinpaprikaQuoteModel _value,
      $Res Function(_$_CoinpaprikaQuoteModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? marketCap = null,
    Object? volume24h = null,
    Object? percentChange24h = null,
    Object? percentChange7d = null,
  }) {
    return _then(_$_CoinpaprikaQuoteModel(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: null == marketCap
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
      volume24h: null == volume24h
          ? _value.volume24h
          : volume24h // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange24h: null == percentChange24h
          ? _value.percentChange24h
          : percentChange24h // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange7d: null == percentChange7d
          ? _value.percentChange7d
          : percentChange7d // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinpaprikaQuoteModel implements _CoinpaprikaQuoteModel {
  const _$_CoinpaprikaQuoteModel(
      {required this.price,
      @JsonKey(name: "market_cap") required this.marketCap,
      @JsonKey(name: "volume_24h") required this.volume24h,
      @JsonKey(name: "percent_change_24h") required this.percentChange24h,
      @JsonKey(name: "percent_change_7d") required this.percentChange7d});

  factory _$_CoinpaprikaQuoteModel.fromJson(Map<String, dynamic> json) =>
      _$$_CoinpaprikaQuoteModelFromJson(json);

  @override
  final double price;
  @override
  @JsonKey(name: "market_cap")
  final double marketCap;
  @override
  @JsonKey(name: "volume_24h")
  final double volume24h;
  @override
  @JsonKey(name: "percent_change_24h")
  final double percentChange24h;
  @override
  @JsonKey(name: "percent_change_7d")
  final double percentChange7d;

  @override
  String toString() {
    return 'CoinpaprikaQuoteModel(price: $price, marketCap: $marketCap, volume24h: $volume24h, percentChange24h: $percentChange24h, percentChange7d: $percentChange7d)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinpaprikaQuoteModel &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.marketCap, marketCap) ||
                other.marketCap == marketCap) &&
            (identical(other.volume24h, volume24h) ||
                other.volume24h == volume24h) &&
            (identical(other.percentChange24h, percentChange24h) ||
                other.percentChange24h == percentChange24h) &&
            (identical(other.percentChange7d, percentChange7d) ||
                other.percentChange7d == percentChange7d));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price, marketCap, volume24h,
      percentChange24h, percentChange7d);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinpaprikaQuoteModelCopyWith<_$_CoinpaprikaQuoteModel> get copyWith =>
      __$$_CoinpaprikaQuoteModelCopyWithImpl<_$_CoinpaprikaQuoteModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinpaprikaQuoteModelToJson(
      this,
    );
  }
}

abstract class _CoinpaprikaQuoteModel implements CoinpaprikaQuoteModel {
  const factory _CoinpaprikaQuoteModel(
      {required final double price,
      @JsonKey(name: "market_cap")
          required final double marketCap,
      @JsonKey(name: "volume_24h")
          required final double volume24h,
      @JsonKey(name: "percent_change_24h")
          required final double percentChange24h,
      @JsonKey(name: "percent_change_7d")
          required final double percentChange7d}) = _$_CoinpaprikaQuoteModel;

  factory _CoinpaprikaQuoteModel.fromJson(Map<String, dynamic> json) =
      _$_CoinpaprikaQuoteModel.fromJson;

  @override
  double get price;
  @override
  @JsonKey(name: "market_cap")
  double get marketCap;
  @override
  @JsonKey(name: "volume_24h")
  double get volume24h;
  @override
  @JsonKey(name: "percent_change_24h")
  double get percentChange24h;
  @override
  @JsonKey(name: "percent_change_7d")
  double get percentChange7d;
  @override
  @JsonKey(ignore: true)
  _$$_CoinpaprikaQuoteModelCopyWith<_$_CoinpaprikaQuoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
