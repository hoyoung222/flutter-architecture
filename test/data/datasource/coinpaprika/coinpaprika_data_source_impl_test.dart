import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sample/data/datasource/coinpaprika/coinpaprika_data_source_impl.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_tickers_model.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_tickers_request_model.dart';
import 'package:sample/data/service/base/api_response.dart';
import 'package:sample/data/service/coinpaprika/coinpaprika_api_service.dart';

import '../../../utils/mocktail_ext.dart';

class _MockCoinpaprikaApiService extends Mock implements CoinpaprikaApiService {}

void main() {
  late _MockCoinpaprikaApiService apiService;
  late CoinpaprikaDataSourceImpl dataSource;

  setUp(() {
    apiService = _MockCoinpaprikaApiService();
    dataSource = CoinpaprikaDataSourceImpl(apiService: apiService);
  });

  test('$CoinpaprikaDataSourceImpl - getList()', () async {
    when(() => apiService.getTickers(requestOption: const CoinpaprikaTickersRequestModel(quotes: {})))
        .thenAnswerWith(const ApiResponse(data: CoinpaprikaTickersModel(items: [])));

    await expectLater(
      dataSource.getTickers(requestModel: const CoinpaprikaTickersRequestModel(quotes: {})),
      completion(isA<CoinpaprikaTickersModel>()),
    );

    verify(() => apiService.getTickers(requestOption: const CoinpaprikaTickersRequestModel(quotes: {}))).called(1);
    verifyNoMoreInteractions(apiService);
  });
}
