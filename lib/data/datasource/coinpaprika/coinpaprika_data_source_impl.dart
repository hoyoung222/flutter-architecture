import 'package:sample/data/service/coinpaprika/coinpaprika_api_service.dart';

import '../../model/coinpaprika/coinpaprika_tickers_model.dart';
import '../../model/coinpaprika/coinpaprika_tickers_request_model.dart';
import 'coinpaprika_data_source.dart';

class CoinpaprikaDataSourceImpl extends CoinpaprikaDataSource {
  final CoinpaprikaApiService _apiService;

  CoinpaprikaDataSourceImpl({
    required CoinpaprikaApiService apiService,
  }) : _apiService = apiService;

  @override
  Future<CoinpaprikaTickersModel> getTickers({required CoinpaprikaTickersRequestModel requestModel}) async {
    return _apiService.getTickers(requestOption: requestModel).then((value) => value.data);
  }
}
