import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_quote_model.dart';

void main() {
  group('$CoinpaprikaQuoteModel', () {
    test('creating instance of Model should succeed', () {
      const model = CoinpaprikaQuoteModel(
        price: 39626346.153239354,
        marketCap: 766676200635231.2,
        volume24h: 12001664741365.352,
        percentChange24h: -0.23,
        percentChange7d: 7.68,
      );
      expect(model.price, 39626346.153239354);
      expect(model.marketCap, 766676200635231.2);
      expect(model.volume24h, 12001664741365.352);
      expect(model.percentChange24h, -0.23);
      expect(model.percentChange7d, 7.68);
    });

    test('creating instance of Model should be equal to another instance with same values', () {
      const model1 = CoinpaprikaQuoteModel(
        price: 39626346.153239354,
        marketCap: 766676200635231.2,
        volume24h: 12001664741365.352,
        percentChange24h: -0.23,
        percentChange7d: 7.68,
      );

      const model2 = CoinpaprikaQuoteModel(
        price: 39626346.153239354,
        marketCap: 766676200635231.2,
        volume24h: 12001664741365.352,
        percentChange24h: -0.23,
        percentChange7d: 7.68,
      );

      expect(model1, model2);
    });

    test('creating instance of Model should not be equal to another instance with different values', () {
      const model1 = CoinpaprikaQuoteModel(
        price: 39626346.153239354,
        marketCap: 766676200635231.2,
        volume24h: 12001664741365.352,
        percentChange24h: -0.23,
        percentChange7d: 7.68,
      );

      const model2 = CoinpaprikaQuoteModel(
        price: 2736469.976757651,
        marketCap: 334872410248483.7,
        volume24h: 8731071253795.882,
        percentChange24h: -0.05,
        percentChange7d: 0.07,
      );

      expect(model1, isNot(model2));
    });

    test('Model.fromJson should convert json to Model object', () {
      const jsonString = '''{
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
          }''';
      final jsonMap = jsonDecode(jsonString);
      final model = CoinpaprikaQuoteModel.fromJson(jsonMap);
      expect(model.price, 39626346.153239354);
      expect(model.marketCap, 766676200635231.2);
      expect(model.volume24h, 12001664741365.352);
      expect(model.percentChange24h, -0.23);
      expect(model.percentChange7d, 7.68);
    });
  });
}
