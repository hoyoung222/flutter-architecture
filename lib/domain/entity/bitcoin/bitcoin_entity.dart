import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample/domain/entity/bitcoin/bitcoin_quote_entity.dart';

import 'bitcoin_quote_type.dart';

part 'generated/bitcoin_entity.freezed.dart';

@freezed
class BitcoinEntity with _$BitcoinEntity {
  const factory BitcoinEntity({
    required String id,
    required String name,
    required String symbol,
    required int rank,
    required Map<BitcoinQuoteType, BitcoinQuoteEntity> quotes,
  }) = _BitcoinEntity;
}
