// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../bitcoins_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BitcoinsEntity {
  List<BitcoinEntity> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BitcoinsEntityCopyWith<BitcoinsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BitcoinsEntityCopyWith<$Res> {
  factory $BitcoinsEntityCopyWith(
          BitcoinsEntity value, $Res Function(BitcoinsEntity) then) =
      _$BitcoinsEntityCopyWithImpl<$Res, BitcoinsEntity>;
  @useResult
  $Res call({List<BitcoinEntity> items});
}

/// @nodoc
class _$BitcoinsEntityCopyWithImpl<$Res, $Val extends BitcoinsEntity>
    implements $BitcoinsEntityCopyWith<$Res> {
  _$BitcoinsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BitcoinEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BitcoinsEntityCopyWith<$Res>
    implements $BitcoinsEntityCopyWith<$Res> {
  factory _$$_BitcoinsEntityCopyWith(
          _$_BitcoinsEntity value, $Res Function(_$_BitcoinsEntity) then) =
      __$$_BitcoinsEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BitcoinEntity> items});
}

/// @nodoc
class __$$_BitcoinsEntityCopyWithImpl<$Res>
    extends _$BitcoinsEntityCopyWithImpl<$Res, _$_BitcoinsEntity>
    implements _$$_BitcoinsEntityCopyWith<$Res> {
  __$$_BitcoinsEntityCopyWithImpl(
      _$_BitcoinsEntity _value, $Res Function(_$_BitcoinsEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$_BitcoinsEntity(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<BitcoinEntity>,
    ));
  }
}

/// @nodoc

class _$_BitcoinsEntity implements _BitcoinsEntity {
  const _$_BitcoinsEntity({required final List<BitcoinEntity> items})
      : _items = items;

  final List<BitcoinEntity> _items;
  @override
  List<BitcoinEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'BitcoinsEntity(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BitcoinsEntity &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BitcoinsEntityCopyWith<_$_BitcoinsEntity> get copyWith =>
      __$$_BitcoinsEntityCopyWithImpl<_$_BitcoinsEntity>(this, _$identity);
}

abstract class _BitcoinsEntity implements BitcoinsEntity {
  const factory _BitcoinsEntity({required final List<BitcoinEntity> items}) =
      _$_BitcoinsEntity;

  @override
  List<BitcoinEntity> get items;
  @override
  @JsonKey(ignore: true)
  _$$_BitcoinsEntityCopyWith<_$_BitcoinsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
