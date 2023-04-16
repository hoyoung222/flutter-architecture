import '../../model/coinpaprika/coinpaprika_tickers_model.dart';
import '../base/api_request_option.dart';
import '../base/api_response.dart';
import '../base/base_api_service.dart';

abstract class CoinpaprikaApiService extends BaseApiService {
  Future<ApiResponse<CoinpaprikaTickersModel>> getTickers({required ApiRequestOption requestOption});
}
