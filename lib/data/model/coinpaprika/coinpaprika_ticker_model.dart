import 'package:freezed_annotation/freezed_annotation.dart';

import 'coinpaprika_quote_model.dart';

part 'generated/coinpaprika_ticker_model.freezed.dart';
part 'generated/coinpaprika_ticker_model.g.dart';

@freezed
class CoinpaprikaTickerModel with _$CoinpaprikaTickerModel {
  const factory CoinpaprikaTickerModel({
    required String id,
    required String name,
    required String symbol,
    required int rank,
    required Map<String, CoinpaprikaQuoteModel> quotes,
  }) = _CoinpaprikaTickerModel;

  factory CoinpaprikaTickerModel.fromJson(Map<String, Object?> json) => _$CoinpaprikaTickerModelFromJson(json);
}
