import 'package:freezed_annotation/freezed_annotation.dart';

import 'coinpaprika_ticker_model.dart';

part 'generated/coinpaprika_tickers_model.freezed.dart';

@freezed
class CoinpaprikaTickersModel with _$CoinpaprikaTickersModel {
  const CoinpaprikaTickersModel._();

  const factory CoinpaprikaTickersModel({
    required List<CoinpaprikaTickerModel> items,
  }) = _CoinpaprikaTickersModel;

  List<CoinpaprikaTickerModel> getItems({required int maxRank}) {
    final items = this.items;
    if (items.length < maxRank) {
      return items;
    }

    return items.sublist(0, maxRank);
  }
}
