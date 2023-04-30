// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../bitcoin_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BitcoinEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  int get rank => throw _privateConstructorUsedError;
  Map<BitcoinQuoteType, BitcoinQuoteEntity> get quotes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BitcoinEntityCopyWith<BitcoinEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BitcoinEntityCopyWith<$Res> {
  factory $BitcoinEntityCopyWith(
          BitcoinEntity value, $Res Function(BitcoinEntity) then) =
      _$BitcoinEntityCopyWithImpl<$Res, BitcoinEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String symbol,
      int rank,
      Map<BitcoinQuoteType, BitcoinQuoteEntity> quotes});
}

/// @nodoc
class _$BitcoinEntityCopyWithImpl<$Res, $Val extends BitcoinEntity>
    implements $BitcoinEntityCopyWith<$Res> {
  _$BitcoinEntityCopyWithImpl(this._value, this._then);

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
              as Map<BitcoinQuoteType, BitcoinQuoteEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BitcoinEntityCopyWith<$Res>
    implements $BitcoinEntityCopyWith<$Res> {
  factory _$$_BitcoinEntityCopyWith(
          _$_BitcoinEntity value, $Res Function(_$_BitcoinEntity) then) =
      __$$_BitcoinEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String symbol,
      int rank,
      Map<BitcoinQuoteType, BitcoinQuoteEntity> quotes});
}

/// @nodoc
class __$$_BitcoinEntityCopyWithImpl<$Res>
    extends _$BitcoinEntityCopyWithImpl<$Res, _$_BitcoinEntity>
    implements _$$_BitcoinEntityCopyWith<$Res> {
  __$$_BitcoinEntityCopyWithImpl(
      _$_BitcoinEntity _value, $Res Function(_$_BitcoinEntity) _then)
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
    return _then(_$_BitcoinEntity(
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
              as Map<BitcoinQuoteType, BitcoinQuoteEntity>,
    ));
  }
}

/// @nodoc

class _$_BitcoinEntity implements _BitcoinEntity {
  const _$_BitcoinEntity(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.rank,
      required final Map<BitcoinQuoteType, BitcoinQuoteEntity> quotes})
      : _quotes = quotes;

  @override
  final String id;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final int rank;
  final Map<BitcoinQuoteType, BitcoinQuoteEntity> _quotes;
  @override
  Map<BitcoinQuoteType, BitcoinQuoteEntity> get quotes {
    if (_quotes is EqualUnmodifiableMapView) return _quotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_quotes);
  }

  @override
  String toString() {
    return 'BitcoinEntity(id: $id, name: $name, symbol: $symbol, rank: $rank, quotes: $quotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BitcoinEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            const DeepCollectionEquality().equals(other._quotes, _quotes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, symbol, rank,
      const DeepCollectionEquality().hash(_quotes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BitcoinEntityCopyWith<_$_BitcoinEntity> get copyWith =>
      __$$_BitcoinEntityCopyWithImpl<_$_BitcoinEntity>(this, _$identity);
}

abstract class _BitcoinEntity implements BitcoinEntity {
  const factory _BitcoinEntity(
          {required final String id,
          required final String name,
          required final String symbol,
          required final int rank,
          required final Map<BitcoinQuoteType, BitcoinQuoteEntity> quotes}) =
      _$_BitcoinEntity;

  @override
  String get id;
  @override
  String get name;
  @override
  String get symbol;
  @override
  int get rank;
  @override
  Map<BitcoinQuoteType, BitcoinQuoteEntity> get quotes;
  @override
  @JsonKey(ignore: true)
  _$$_BitcoinEntityCopyWith<_$_BitcoinEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
