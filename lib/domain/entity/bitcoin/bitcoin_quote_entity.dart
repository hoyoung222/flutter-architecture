import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/bitcoin_quote_entity.freezed.dart';

@freezed
class BitcoinQuoteEntity with _$BitcoinQuoteEntity {
  const factory BitcoinQuoteEntity({
    required double price,
  }) = _BitcoinQuoteEntity;
}
