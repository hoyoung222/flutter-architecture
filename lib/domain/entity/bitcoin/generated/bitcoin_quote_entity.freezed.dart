// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../bitcoin_quote_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BitcoinQuoteEntity {
  double get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BitcoinQuoteEntityCopyWith<BitcoinQuoteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BitcoinQuoteEntityCopyWith<$Res> {
  factory $BitcoinQuoteEntityCopyWith(
          BitcoinQuoteEntity value, $Res Function(BitcoinQuoteEntity) then) =
      _$BitcoinQuoteEntityCopyWithImpl<$Res, BitcoinQuoteEntity>;
  @useResult
  $Res call({double price});
}

/// @nodoc
class _$BitcoinQuoteEntityCopyWithImpl<$Res, $Val extends BitcoinQuoteEntity>
    implements $BitcoinQuoteEntityCopyWith<$Res> {
  _$BitcoinQuoteEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BitcoinQuoteEntityCopyWith<$Res>
    implements $BitcoinQuoteEntityCopyWith<$Res> {
  factory _$$_BitcoinQuoteEntityCopyWith(_$_BitcoinQuoteEntity value,
          $Res Function(_$_BitcoinQuoteEntity) then) =
      __$$_BitcoinQuoteEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double price});
}

/// @nodoc
class __$$_BitcoinQuoteEntityCopyWithImpl<$Res>
    extends _$BitcoinQuoteEntityCopyWithImpl<$Res, _$_BitcoinQuoteEntity>
    implements _$$_BitcoinQuoteEntityCopyWith<$Res> {
  __$$_BitcoinQuoteEntityCopyWithImpl(
      _$_BitcoinQuoteEntity _value, $Res Function(_$_BitcoinQuoteEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$_BitcoinQuoteEntity(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_BitcoinQuoteEntity implements _BitcoinQuoteEntity {
  const _$_BitcoinQuoteEntity({required this.price});

  @override
  final double price;

  @override
  String toString() {
    return 'BitcoinQuoteEntity(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BitcoinQuoteEntity &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BitcoinQuoteEntityCopyWith<_$_BitcoinQuoteEntity> get copyWith =>
      __$$_BitcoinQuoteEntityCopyWithImpl<_$_BitcoinQuoteEntity>(
          this, _$identity);
}

abstract class _BitcoinQuoteEntity implements BitcoinQuoteEntity {
  const factory _BitcoinQuoteEntity({required final double price}) =
      _$_BitcoinQuoteEntity;

  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$_BitcoinQuoteEntityCopyWith<_$_BitcoinQuoteEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
