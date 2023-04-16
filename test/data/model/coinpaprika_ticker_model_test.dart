import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_quote_model.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_ticker_model.dart';

void main() {
  group('$CoinpaprikaTickerModel', () {
    test('creating instance of Model should succeed', () {
      const model = CoinpaprikaTickerModel(
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
      );
      expect(model.id, 'btc-bitcoin');
      expect(model.name, 'Bitcoin');
      expect(model.symbol, 'BTC');
      expect(model.rank, 1);
      expect(
        model.quotes,
        {
          "KRW": const CoinpaprikaQuoteModel(
            price: 39626346.153239354,
            marketCap: 766676200635231.2,
            volume24h: 12001664741365.352,
            percentChange24h: -0.23,
            percentChange7d: 7.68,
          )
        },
      );
    });

    test('creating instance of Model should be equal to another instance with same values', () {
      const model1 = CoinpaprikaTickerModel(
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
      );
      const model2 = CoinpaprikaTickerModel(
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
      );
      expect(model1, model2);
    });

    test('creating instance of Model should not be equal to another instance with different values', () {
      const model1 = CoinpaprikaTickerModel(
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
      );
      const model2 = CoinpaprikaTickerModel(
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
      );
      expect(model1, isNot(model2));
    });

    test('Model.fromJson should convert json to Model object', () {
      const jsonString = '''{
            "id":"btc-bitcoin",
            "name":"Bitcoin",
            "symbol":"BTC",
            "rank":1,
            "circulating_supply":19347638,
            "total_supply":19347625,
            "max_supply":21000000,
            "beta_value":1.01603,
            "first_data_at":"2010-07-17T00:00:00Z",
            "last_updated":"2023-04-16T06:49:30Z",
            "quotes":{
              "KRW":{
                "price":39626346.153239354,
                "volume_24h":12001664741365.352,
                "volume_24h_change_24h":-39.92,
                "market_cap":766676200635231.2,
                "market_cap_change_24h":-0.23,
                "percent_change_15m":0.02,
                "percent_change_30m":0.04,
                "percent_change_1h":0.07,
                "percent_change_6h":0.2,
                "percent_change_12h":0.09,
                "percent_change_24h":-0.23,
                "percent_change_7d":7.68,
                "percent_change_30d":9.53,
                "percent_change_1y":-20.45,
                "ath_price":89600387.4478991,
                "ath_date":"2021-11-10T16:50:00Z",
                "percent_from_price_ath":-55.77
              }
            }
          }''';
      final jsonMap = jsonDecode(jsonString);
      final model = CoinpaprikaTickerModel.fromJson(jsonMap);
      expect(model.id, 'btc-bitcoin');
      expect(model.name, 'Bitcoin');
      expect(model.symbol, 'BTC');
      expect(model.rank, 1);
      expect(
        model.quotes,
        {
          "KRW": const CoinpaprikaQuoteModel(
            price: 39626346.153239354,
            marketCap: 766676200635231.2,
            volume24h: 12001664741365.352,
            percentChange24h: -0.23,
            percentChange7d: 7.68,
          )
        },
      );
    });
  });
}
