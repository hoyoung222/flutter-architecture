import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/coinpaprika_quote_model.freezed.dart';
part 'generated/coinpaprika_quote_model.g.dart';

@freezed
class CoinpaprikaQuoteModel with _$CoinpaprikaQuoteModel {
  const factory CoinpaprikaQuoteModel({
    required double price,
    @JsonKey(name: "market_cap") required double marketCap,
    @JsonKey(name: "volume_24h") required double volume24h,
    @JsonKey(name: "percent_change_24h") required double percentChange24h,
    @JsonKey(name: "percent_change_7d") required double percentChange7d,
  }) = _CoinpaprikaQuoteModel;

  factory CoinpaprikaQuoteModel.fromJson(Map<String, Object?> json) => _$CoinpaprikaQuoteModelFromJson(json);
}
