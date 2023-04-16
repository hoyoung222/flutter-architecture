// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../coinpaprika_ticker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoinpaprikaTickerModel _$CoinpaprikaTickerModelFromJson(
    Map<String, dynamic> json) {
  return _CoinpaprikaTickerModel.fromJson(json);
}

/// @nodoc
mixin _$CoinpaprikaTickerModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  Map<String, CoinpaprikaQuoteModel> get quotes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinpaprikaTickerModelCopyWith<CoinpaprikaTickerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinpaprikaTickerModelCopyWith<$Res> {
  factory $CoinpaprikaTickerModelCopyWith(CoinpaprikaTickerModel value,
          $Res Function(CoinpaprikaTickerModel) then) =
      _$CoinpaprikaTickerModelCopyWithImpl<$Res, CoinpaprikaTickerModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String symbol,
      int rank,
      Map<String, CoinpaprikaQuoteModel> quotes});
}

/// @nodoc
class _$CoinpaprikaTickerModelCopyWithImpl<$Res,
        $Val extends CoinpaprikaTickerModel>
    implements $CoinpaprikaTickerModelCopyWith<$Res> {
  _$CoinpaprikaTickerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? symbol = null,
    Object? rank = null,
    Object? quotes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      quotes: null == quotes
          ? _value.quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as Map<String, CoinpaprikaQuoteModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoinpaprikaTickerModelCopyWith<$Res>
    implements $CoinpaprikaTickerModelCopyWith<$Res> {
  factory _$$_CoinpaprikaTickerModelCopyWith(_$_CoinpaprikaTickerModel value,
          $Res Function(_$_CoinpaprikaTickerModel) then) =
      __$$_CoinpaprikaTickerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String symbol,
      int rank,
      Map<String, CoinpaprikaQuoteModel> quotes});
}

/// @nodoc
class __$$_CoinpaprikaTickerModelCopyWithImpl<$Res>
    extends _$CoinpaprikaTickerModelCopyWithImpl<$Res,
        _$_CoinpaprikaTickerModel>
    implements _$$_CoinpaprikaTickerModelCopyWith<$Res> {
  __$$_CoinpaprikaTickerModelCopyWithImpl(_$_CoinpaprikaTickerModel _value,
      $Res Function(_$_CoinpaprikaTickerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? symbol = null,
    Object? rank = null,
    Object? quotes = null,
  }) {
    return _then(_$_CoinpaprikaTickerModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      quotes: null == quotes
          ? _value._quotes
          : quotes // ignore: cast_nullable_to_non_nullable
              as Map<String, CoinpaprikaQuoteModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoinpaprikaTickerModel implements _CoinpaprikaTickerModel {
  const _$_CoinpaprikaTickerModel(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.rank,
      required final Map<String, CoinpaprikaQuoteModel> quotes})
      : _quotes = quotes;

  factory _$_CoinpaprikaTickerModel.fromJson(Map<String, dynamic> json) =>
      _$$_CoinpaprikaTickerModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final int rank;
  final Map<String, CoinpaprikaQuoteModel> _quotes;
  @override
  Map<String, CoinpaprikaQuoteModel> get quotes {
    if (_quotes is EqualUnmodifiableMapView) return _quotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_quotes);
  }

  @override
  String toString() {
    return 'CoinpaprikaTickerModel(id: $id, name: $name, symbol: $symbol, rank: $rank, quotes: $quotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoinpaprikaTickerModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            const DeepCollectionEquality().equals(other._quotes, _quotes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, symbol, rank,
      const DeepCollectionEquality().hash(_quotes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoinpaprikaTickerModelCopyWith<_$_CoinpaprikaTickerModel> get copyWith =>
      __$$_CoinpaprikaTickerModelCopyWithImpl<_$_CoinpaprikaTickerModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoinpaprikaTickerModelToJson(
      this,
    );
  }
}

abstract class _CoinpaprikaTickerModel implements CoinpaprikaTickerModel {
  const factory _CoinpaprikaTickerModel(
          {required final String id,
          required final String name,
          required final String symbol,
          required final int rank,
          required final Map<String, CoinpaprikaQuoteModel> quotes}) =
      _$_CoinpaprikaTickerModel;

  factory _CoinpaprikaTickerModel.fromJson(Map<String, dynamic> json) =
      _$_CoinpaprikaTickerModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get symbol;
  @override
  int get rank;
  @override
  Map<String, CoinpaprikaQuoteModel> get quotes;
  @override
  @JsonKey(ignore: true)
  _$$_CoinpaprikaTickerModelCopyWith<_$_CoinpaprikaTickerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
