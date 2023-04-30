import 'package:flutter_test/flutter_test.dart';
import 'package:sample/domain/entity/bitcoin/bitcoin_entity.dart';
import 'package:sample/domain/entity/bitcoin/bitcoin_quote_entity.dart';
import 'package:sample/domain/entity/bitcoin/bitcoin_quote_type.dart';

void main() {
  group('$BitcoinEntity', () {
    test('creating instance of Entity should succeed', () {
      const model = BitcoinEntity(
        id: "btc-bitcoin",
        name: "Bitcoin",
        symbol: "BTC",
        rank: 1,
        quotes: {
          BitcoinQuoteType.btc: BitcoinQuoteEntity(price: 1000.0),
          BitcoinQuoteType.krw: BitcoinQuoteEntity(price: 2000.0),
          BitcoinQuoteType.usd: BitcoinQuoteEntity(price: 3000.0),
        },
      );

      expect(model.id, "btc-bitcoin");
      expect(model.name, "Bitcoin");
      expect(model.symbol, "BTC");
      expect(model.rank, 1);
      expect(model.quotes, {
        BitcoinQuoteType.btc: BitcoinQuoteEntity(price: 1000.0),
        BitcoinQuoteType.krw: BitcoinQuoteEntity(price: 2000.0),
        BitcoinQuoteType.usd: BitcoinQuoteEntity(price: 3000.0),
      });
    });

    test('creating instance of Entity should be equal to another instance with same values', () {
      const model1 = BitcoinEntity(
        id: "btc-bitcoin",
        name: "Bitcoin",
        symbol: "BTC",
        rank: 1,
        quotes: {
          BitcoinQuoteType.btc: BitcoinQuoteEntity(price: 1000.0),
          BitcoinQuoteType.krw: BitcoinQuoteEntity(price: 2000.0),
          BitcoinQuoteType.usd: BitcoinQuoteEntity(price: 3000.0),
        },
      );
      const model2 = BitcoinEntity(
        id: "btc-bitcoin",
        name: "Bitcoin",
        symbol: "BTC",
        rank: 1,
        quotes: {
          BitcoinQuoteType.btc: BitcoinQuoteEntity(price: 1000.0),
          BitcoinQuoteType.krw: BitcoinQuoteEntity(price: 2000.0),
          BitcoinQuoteType.usd: BitcoinQuoteEntity(price: 3000.0),
        },
      );

      expect(model1, model2);
    });

    test('creating instance of Entity should not be equal to another instance with different values', () {
      const model1 = BitcoinEntity(
        id: "btc-bitcoin",
        name: "Bitcoin",
        symbol: "BTC",
        rank: 1,
        quotes: {
          BitcoinQuoteType.btc: BitcoinQuoteEntity(price: 1000.0),
          BitcoinQuoteType.krw: BitcoinQuoteEntity(price: 2000.0),
          BitcoinQuoteType.usd: BitcoinQuoteEntity(price: 3000.0),
        },
      );

      const model2 = BitcoinEntity(
        id: "btc-bitcoin",
        name: "Bitcoin",
        symbol: "BTC",
        rank: 2,
        quotes: {
          BitcoinQuoteType.btc: BitcoinQuoteEntity(price: 1000.0),
          BitcoinQuoteType.krw: BitcoinQuoteEntity(price: 2000.0),
          BitcoinQuoteType.usd: BitcoinQuoteEntity(price: 3000.0),
        },
      );

      expect(model1, isNot(model2));
    });
  });
}
