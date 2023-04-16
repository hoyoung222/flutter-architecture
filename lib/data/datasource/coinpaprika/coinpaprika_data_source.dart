import '../../model/coinpaprika/coinpaprika_tickers_model.dart';
import '../../model/coinpaprika/coinpaprika_tickers_request_model.dart';

abstract class CoinpaprikaDataSource {
  Future<CoinpaprikaTickersModel> getTickers({required CoinpaprikaTickersRequestModel requestModel});
}
