import 'package:sample/domain/entity/bitcoin/bitcoin_quote_type.dart';
import 'package:sample/domain/entity/bitcoin/bitcoins_entity.dart';

abstract class BitcoinRepository {
  Future<BitcoinsEntity> getList({
    required int maxRank,
    required Set<BitcoinQuoteType> quotes,
  });
}
