import 'package:sample/domain/entity/bitcoin/bitcoin_entity.dart';
import 'package:sample/domain/entity/bitcoin/bitcoin_quote_entity.dart';
import 'package:sample/domain/entity/bitcoin/bitcoin_quote_type.dart';
import 'package:sample/domain/entity/bitcoin/bitcoins_entity.dart';

import '../../model/coinpaprika/coinpaprika_quote_model.dart';
import '../../model/coinpaprika/coinpaprika_quote_type.dart';
import '../../model/coinpaprika/coinpaprika_ticker_model.dart';
import '../../model/coinpaprika/coinpaprika_tickers_model.dart';
import '../../model/coinpaprika/coinpaprika_tickers_request_model.dart';

class BitcoinDataMapper {
  const BitcoinDataMapper();

  CoinpaprikaTickersRequestModel mapperToCoinpaprikaTickersRequestModel(Set<BitcoinQuoteType> quotes) {
    return CoinpaprikaTickersRequestModel(
      quotes: _mapperToCoinpaprikaQuoteTypes(quotes),
    );
  }

  Set<CoinpaprikaQuoteType> _mapperToCoinpaprikaQuoteTypes(Set<BitcoinQuoteType> quotes) {
    return quotes.map((e) => _mapperToCoinpaprikaQuoteType(e)).toSet();
  }

  CoinpaprikaQuoteType _mapperToCoinpaprikaQuoteType(BitcoinQuoteType quote) {
    switch (quote) {
      case BitcoinQuoteType.krw:
        return CoinpaprikaQuoteType.krw;
      case BitcoinQuoteType.usd:
        return CoinpaprikaQuoteType.usd;
      case BitcoinQuoteType.btc:
        return CoinpaprikaQuoteType.btc;
    }
  }

  BitcoinsEntity mapperFromCoinpaprikaTickersModel(
    CoinpaprikaTickersModel tickers, {
    required int maxRank,
  }) {
    return BitcoinsEntity(
      items: tickers.getItems(maxRank: maxRank).map((e) => _mapperFromCoinpaprikaTickerModel(e)).toList(),
    );
  }

  BitcoinEntity _mapperFromCoinpaprikaTickerModel(CoinpaprikaTickerModel ticker) {
    return BitcoinEntity(
      id: ticker.id,
      name: ticker.name,
      symbol: ticker.symbol,
      rank: ticker.rank,
      quotes: _mapperFromMapCoinpaprikaQuoteModel(ticker.quotes),
    );
  }

  Map<BitcoinQuoteType, BitcoinQuoteEntity> _mapperFromMapCoinpaprikaQuoteModel(
    Map<String, CoinpaprikaQuoteModel> quotes,
  ) {
    final Map<BitcoinQuoteType, BitcoinQuoteEntity> result = {};

    quotes.forEach((key, value) {
      final quoteType = _mapperFromCoinpaprikaQuoteType(key);
      if (quoteType != null) {
        result[quoteType] = _mapperFromCoinpaprikaQuoteModel(value);
      }
    });

    return result;
  }

  BitcoinQuoteType? _mapperFromCoinpaprikaQuoteType(String quoteType) {
    final BitcoinQuoteType? result;
    if (quoteType == "KRW") {
      result = BitcoinQuoteType.krw;
    } else if (quoteType == "BTC") {
      result = BitcoinQuoteType.btc;
    } else if (quoteType == "USD") {
      result = BitcoinQuoteType.usd;
    } else {
      result = null;
    }
    return result;
  }

  BitcoinQuoteEntity _mapperFromCoinpaprikaQuoteModel(CoinpaprikaQuoteModel quote) {
    return BitcoinQuoteEntity(price: quote.price);
  }
}
