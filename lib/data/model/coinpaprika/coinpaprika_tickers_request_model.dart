import 'package:freezed_annotation/freezed_annotation.dart';

import '../../service/base/api_request_option.dart';
import 'coinpaprika_quote_type.dart';

part 'generated/coinpaprika_tickers_request_model.freezed.dart';

@freezed
class CoinpaprikaTickersRequestModel with _$CoinpaprikaTickersRequestModel implements ApiRequestOption {
  const CoinpaprikaTickersRequestModel._();

  const factory CoinpaprikaTickersRequestModel({
    required Set<CoinpaprikaQuoteType> quotes,
  }) = _CoinpaprikaTickersRequestModel;

  @override
  Object? get data => null;

  @override
  Map<String, dynamic>? get queryParameters => {
        "quotes": quotes.map((e) => e.name.toUpperCase()).join(","),
      };
}
