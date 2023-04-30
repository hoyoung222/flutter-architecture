import 'package:freezed_annotation/freezed_annotation.dart';

import 'bitcoin_entity.dart';

part 'generated/bitcoins_entity.freezed.dart';

@freezed
class BitcoinsEntity with _$BitcoinsEntity {
  const factory BitcoinsEntity({
    required List<BitcoinEntity> items,
  }) = _BitcoinsEntity;
}
