import 'package:flutter_test/flutter_test.dart';
import 'package:sample/data/mapper/bitcoin/bitcoin_data_mapper.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_quote_model.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_quote_type.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_ticker_model.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_tickers_model.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_tickers_request_model.dart';
import 'package:sample/domain/entity/bitcoin/bitcoin_entity.dart';
import 'package:sample/domain/entity/bitcoin/bitcoin_quote_entity.dart';
import 'package:sample/domain/entity/bitcoin/bitcoin_quote_type.dart';
import 'package:sample/domain/entity/bitcoin/bitcoins_entity.dart';

void main() {
  test('$BitcoinDataMapper - mapperToCoinpaprikaTickersRequestModel', () {
    expect(
      BitcoinDataMapper().mapperToCoinpaprikaTickersRequestModel(
        {
          BitcoinQuoteType.btc,
          BitcoinQuoteType.krw,
          BitcoinQuoteType.usd,
        },
      ),
      CoinpaprikaTickersRequestModel(
        quotes: {
          CoinpaprikaQuoteType.btc,
          CoinpaprikaQuoteType.krw,
          CoinpaprikaQuoteType.usd,
        },
      ),
    );
  });

  test('$BitcoinDataMapper - mapperFromCoinpaprikaTickersModel', () {
    expect(
      BitcoinDataMapper().mapperFromCoinpaprikaTickersModel(
        CoinpaprikaTickersModel(items: [
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
              ),
              "USD": CoinpaprikaQuoteModel(
                price: 29247.42503824836,
                marketCap: 566226873029,
                volume24h: 7581414799.141703,
                percentChange24h: -0.51,
                percentChange7d: 5.95,
              ),
              "BTC": CoinpaprikaQuoteModel(
                price: 1.0,
                marketCap: 19359888,
                volume24h: 259216.4879208032,
                percentChange24h: 0.0,
                percentChange7d: 0.0,
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
          ),
        ]),
        maxRank: 2,
      ),
      BitcoinsEntity(
        items: [
          BitcoinEntity(
            id: "btc-bitcoin",
            name: "Bitcoin",
            symbol: 'BTC',
            rank: 1,
            quotes: {
              BitcoinQuoteType.krw: BitcoinQuoteEntity(price: 39626346.153239354),
              BitcoinQuoteType.usd: BitcoinQuoteEntity(price: 29247.42503824836),
              BitcoinQuoteType.btc: BitcoinQuoteEntity(price: 1.0),
            },
          ),
          BitcoinEntity(
            id: "eth-ethereum",
            name: "Ethereum",
            symbol: 'ETH',
            rank: 2,
            quotes: {
              BitcoinQuoteType.krw: BitcoinQuoteEntity(price: 2736469.976757651),
            },
          ),
        ],
      ),
    );

    expect(
      BitcoinDataMapper().mapperFromCoinpaprikaTickersModel(
        CoinpaprikaTickersModel(items: [
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
              ),
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
          ),
        ]),
        maxRank: 1,
      ),
      BitcoinsEntity(
        items: [
          BitcoinEntity(
            id: "btc-bitcoin",
            name: "Bitcoin",
            symbol: 'BTC',
            rank: 1,
            quotes: {
              BitcoinQuoteType.krw: BitcoinQuoteEntity(price: 39626346.153239354),
            },
          ),
        ],
      ),
    );

    expect(
      BitcoinDataMapper().mapperFromCoinpaprikaTickersModel(
        CoinpaprikaTickersModel(items: [
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
              ),
            },
          ),
        ]),
        maxRank: 2,
      ),
      BitcoinsEntity(
        items: [
          BitcoinEntity(
            id: "btc-bitcoin",
            name: "Bitcoin",
            symbol: 'BTC',
            rank: 1,
            quotes: {
              BitcoinQuoteType.krw: BitcoinQuoteEntity(price: 39626346.153239354),
            },
          ),
        ],
      ),
    );
  });
}
