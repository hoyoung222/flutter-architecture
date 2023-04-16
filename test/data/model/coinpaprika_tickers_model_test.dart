import 'package:flutter_test/flutter_test.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_quote_model.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_ticker_model.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_tickers_model.dart';

void main() {
  group('$CoinpaprikaTickersModel', () {
    test('creating instance of Model should succeed', () {
      const model = CoinpaprikaTickersModel(items: [
        CoinpaprikaTickerModel(
          id: "btc-bitcoin",
          name: 'Bitcoin',
          symbol: 'BTC',
          rank: 1,
          quotes: {
            "KRW": CoinpaprikaQuoteModel(
              price: 39626346.153239354,
              marketCap: 766676200635231.2,
              volume24h: 12001664741365.352,
              percentChange24h: -0.23,
              percentChange7d: 7.68,
            )
          },
        )
      ]);

      expect(
        model.items,
        [
          const CoinpaprikaTickerModel(
            id: "btc-bitcoin",
            name: 'Bitcoin',
            symbol: 'BTC',
            rank: 1,
            quotes: {
              "KRW": CoinpaprikaQuoteModel(
                price: 39626346.153239354,
                marketCap: 766676200635231.2,
                volume24h: 12001664741365.352,
                percentChange24h: -0.23,
                percentChange7d: 7.68,
              )
            },
          )
        ],
      );
    });

    test('creating instance of Model should be equal to another instance with same values', () {
      const model1 = CoinpaprikaTickersModel(items: [
        CoinpaprikaTickerModel(
          id: "btc-bitcoin",
          name: 'Bitcoin',
          symbol: 'BTC',
          rank: 1,
          quotes: {
            "KRW": CoinpaprikaQuoteModel(
              price: 39626346.153239354,
              marketCap: 766676200635231.2,
              volume24h: 12001664741365.352,
              percentChange24h: -0.23,
              percentChange7d: 7.68,
            )
          },
        )
      ]);
      const model2 = CoinpaprikaTickersModel(items: [
        CoinpaprikaTickerModel(
          id: "btc-bitcoin",
          name: 'Bitcoin',
          symbol: 'BTC',
          rank: 1,
          quotes: {
            "KRW": CoinpaprikaQuoteModel(
              price: 39626346.153239354,
              marketCap: 766676200635231.2,
              volume24h: 12001664741365.352,
              percentChange24h: -0.23,
              percentChange7d: 7.68,
            )
          },
        )
      ]);
      expect(model1, model2);
    });

    test('creating instance of Model should not be equal to another instance with different values', () {
      const model1 = CoinpaprikaTickersModel(items: [
        CoinpaprikaTickerModel(
          id: "btc-bitcoin",
          name: 'Bitcoin',
          symbol: 'BTC',
          rank: 1,
          quotes: {
            "KRW": CoinpaprikaQuoteModel(
              price: 39626346.153239354,
              marketCap: 766676200635231.2,
              volume24h: 12001664741365.352,
              percentChange24h: -0.23,
              percentChange7d: 7.68,
            )
          },
        )
      ]);
      const model2 = CoinpaprikaTickersModel(items: [
        CoinpaprikaTickerModel(
          id: "eth-ethereum",
          name: 'Ethereum',
          symbol: 'ETH',
          rank: 2,
          quotes: {
            "KRW": CoinpaprikaQuoteModel(
              price: 2736469.976757651,
              marketCap: 334872410248483.7,
              volume24h: 8731071253795.882,
              percentChange24h: -0.05,
              percentChange7d: 0.07,
            )
          },
        )
      ]);
      expect(model1, isNot(model2));
    });

    test('getItems', () {
      const model = CoinpaprikaTickersModel(items: [
        CoinpaprikaTickerModel(
          id: "btc-bitcoin",
          name: 'Bitcoin',
          symbol: 'BTC',
          rank: 1,
          quotes: {
            "KRW": CoinpaprikaQuoteModel(
              price: 39626346.153239354,
              marketCap: 766676200635231.2,
              volume24h: 12001664741365.352,
              percentChange24h: -0.23,
              percentChange7d: 7.68,
            )
          },
        ),
        CoinpaprikaTickerModel(
          id: "eth-ethereum",
          name: 'Ethereum',
          symbol: 'ETH',
          rank: 2,
          quotes: {
            "KRW": CoinpaprikaQuoteModel(
              price: 2736469.976757651,
              marketCap: 334872410248483.7,
              volume24h: 8731071253795.882,
              percentChange24h: -0.05,
              percentChange7d: 0.07,
            )
          },
        )
      ]);

      expect(model.getItems(maxRank: 3), [
        CoinpaprikaTickerModel(
          id: "btc-bitcoin",
          name: 'Bitcoin',
          symbol: 'BTC',
          rank: 1,
          quotes: {
            "KRW": CoinpaprikaQuoteModel(
              price: 39626346.153239354,
              marketCap: 766676200635231.2,
              volume24h: 12001664741365.352,
              percentChange24h: -0.23,
              percentChange7d: 7.68,
            )
          },
        ),
        CoinpaprikaTickerModel(
          id: "eth-ethereum",
          name: 'Ethereum',
          symbol: 'ETH',
          rank: 2,
          quotes: {
            "KRW": CoinpaprikaQuoteModel(
              price: 2736469.976757651,
              marketCap: 334872410248483.7,
              volume24h: 8731071253795.882,
              percentChange24h: -0.05,
              percentChange7d: 0.07,
            )
          },
        )
      ]);
      expect(model.getItems(maxRank: 2), [
        CoinpaprikaTickerModel(
          id: "btc-bitcoin",
          name: 'Bitcoin',
          symbol: 'BTC',
          rank: 1,
          quotes: {
            "KRW": CoinpaprikaQuoteModel(
              price: 39626346.153239354,
              marketCap: 766676200635231.2,
              volume24h: 12001664741365.352,
              percentChange24h: -0.23,
              percentChange7d: 7.68,
            )
          },
        ),
        CoinpaprikaTickerModel(
          id: "eth-ethereum",
          name: 'Ethereum',
          symbol: 'ETH',
          rank: 2,
          quotes: {
            "KRW": CoinpaprikaQuoteModel(
              price: 2736469.976757651,
              marketCap: 334872410248483.7,
              volume24h: 8731071253795.882,
              percentChange24h: -0.05,
              percentChange7d: 0.07,
            )
          },
        )
      ]);
      expect(model.getItems(maxRank: 1), [
        CoinpaprikaTickerModel(
          id: "btc-bitcoin",
          name: 'Bitcoin',
          symbol: 'BTC',
          rank: 1,
          quotes: {
            "KRW": CoinpaprikaQuoteModel(
              price: 39626346.153239354,
              marketCap: 766676200635231.2,
              volume24h: 12001664741365.352,
              percentChange24h: -0.23,
              percentChange7d: 7.68,
            )
          },
        ),
      ]);
      expect(model.getItems(maxRank: 0), []);
    });
  });
}
