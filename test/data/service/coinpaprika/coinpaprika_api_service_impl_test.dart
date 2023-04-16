import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_quote_type.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_tickers_model.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_tickers_request_model.dart';
import 'package:sample/data/service/base/api_exception.dart';
import 'package:sample/data/service/base/api_request_option.dart';
import 'package:sample/data/service/base/api_response.dart';
import 'package:sample/data/service/coinpaprika/coinpaprika_api_service.dart';
import 'package:sample/data/service/coinpaprika/coinpaprika_api_service_impl.dart';

import '../../../utils/mocktail_ext.dart';

class _MockDio extends Mock implements Dio {}

class _MockResponse<T> extends Mock implements Response<T> {
  final int? _statusCode;
  final T? _data;

  _MockResponse(this._statusCode, {T? data}) : _data = data;

  @override
  int? get statusCode => _statusCode;

  @override
  T? get data => _data;
}

class _MockRequestOptions extends Mock implements RequestOptions {}

CoinpaprikaApiServiceImpl _createApiService(Dio dio) {
  return CoinpaprikaApiServiceImpl(dio);
}

void main() {
  late Dio mockDio;

  setUp(() {
    mockDio = _MockDio();
  });

  tearDown(() => reset(mockDio));

  group('$CoinpaprikaApiServiceImpl - createWithOption', () {
    test('default', () {
      final apiService = CoinpaprikaApiServiceImpl.createWithOption(
        baseUrl: "http://sample.com",
      );

      expect(apiService.dio.options.baseUrl, "http://sample.com");

      expect(apiService.dio.options.validateStatus(200), isTrue);
      expect(apiService.dio.options.validateStatus(204), isFalse);
      expect(apiService.dio.options.validateStatus(404), isFalse);

      expect(apiService.dio.options.connectTimeout, null);
      expect(apiService.dio.options.receiveTimeout, null);
      expect(apiService.dio.options.sendTimeout, null);
    });

    test('custom', () {
      final apiService = CoinpaprikaApiServiceImpl.createWithOption(
        baseUrl: "http://sample2.com",
        validateStatusCodeSet: {200, 204},
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 15),
      );

      expect(apiService.dio.options.baseUrl, "http://sample2.com");

      expect(apiService.dio.options.validateStatus(200), isTrue);
      expect(apiService.dio.options.validateStatus(204), isTrue);
      expect(apiService.dio.options.validateStatus(404), isFalse);

      expect(apiService.dio.options.connectTimeout, const Duration(seconds: 5));
      expect(apiService.dio.options.receiveTimeout, const Duration(seconds: 10));
      expect(apiService.dio.options.sendTimeout, const Duration(seconds: 15));
    });
  });

  test('$CoinpaprikaApiService - enableLog', () {
    final apiService = CoinpaprikaApiServiceImpl.createWithOption(
      baseUrl: "http://sample.com",
    );

    expect(
      apiService.dio.interceptors.contains(apiService.loggingInterceptor),
      isFalse,
    );

    apiService.enableLog(true);
    expect(
      apiService.dio.interceptors.contains(apiService.loggingInterceptor),
      isTrue,
    );

    apiService.enableLog(false);
    expect(
      apiService.dio.interceptors.contains(apiService.loggingInterceptor),
      isFalse,
    );
  });

  group('$CoinpaprikaApiServiceImpl - handelError', () {
    group('Exception o, DioError o', () {
      DioError createDioError(DioErrorType type, {int? statusCode, String? message}) {
        return DioError(
          type: type,
          requestOptions: _MockRequestOptions(),
          response: _MockResponse(statusCode),
          message: message,
        );
      }

      test('type == badResponse, statusCode != null, message == null', () {
        final apiService = _createApiService(mockDio);
        final dioError = createDioError(DioErrorType.badResponse, statusCode: 400);
        final apiException = apiService.convertError(dioError);
        expect(apiException, isA<ApiExceptionBadResponse>());
        expect(apiException.rawException, isA<DioError>());
        expect(apiException.message, "");
        if (apiException is ApiExceptionBadResponse) {
          expect(apiException.statusCode, 400);
        }
      });

      test('type == badResponse, statusCode != null, message != null', () {
        final apiService = _createApiService(mockDio);
        final dioError = createDioError(DioErrorType.badResponse, statusCode: 400, message: "test");
        final apiException = apiService.convertError(dioError);
        expect(apiException, isA<ApiExceptionBadResponse>());
        expect(apiException.rawException, isA<DioError>());
        expect(apiException.message, "test");
        if (apiException is ApiExceptionBadResponse) {
          expect(apiException.statusCode, 400);
        }
      });

      test('type == badResponse, statusCode == null, message == null', () {
        final apiService = _createApiService(mockDio);
        final dioError = createDioError(DioErrorType.badResponse);
        final apiException = apiService.convertError(dioError);
        expect(apiException, isA<ApiExceptionOther>());
        expect(apiException.rawException, isA<DioError>());
        expect(apiException.message, "");
      });

      test('type == badResponse, statusCode == null, message == null', () {
        final apiService = _createApiService(mockDio);
        final dioError = createDioError(DioErrorType.badResponse, message: "test");
        final apiException = apiService.convertError(dioError);
        expect(apiException, isA<ApiExceptionOther>());
        expect(apiException.rawException, isA<DioError>());
        expect(apiException.message, "test");
      });

      test('type != badResponse, statusCode == null, message == null', () {
        final apiService = _createApiService(mockDio);
        final dioError = createDioError(DioErrorType.unknown, message: "test");
        final apiException = apiService.convertError(dioError);
        expect(apiException, isA<ApiExceptionOther>());
        expect(apiException.rawException, isA<DioError>());
        expect(apiException.message, "test");
      });
    });

    test('Exception o, DioError x', () {
      final apiService = _createApiService(mockDio);
      final exception = Exception("test");
      final apiException = apiService.convertError(exception);
      expect(apiException, isA<ApiExceptionOther>());
      expect(apiException.rawException, isA<Exception>());
      expect(apiException.message, exception.toString());
    });

    test('Exception x', () {
      final apiService = _createApiService(mockDio);
      final error = TypeError();
      final apiException = apiService.convertError(error);
      expect(apiException, isA<ApiExceptionOther>());
      expect(apiException.rawException, isA<Exception>());
      expect(apiException.message, error.toString());
    });
  });

  group('$CoinpaprikaApiServiceImpl - getTickers', () {
    ApiRequestOption createApiRequestOption({required Set<CoinpaprikaQuoteType> quotes}) {
      return CoinpaprikaTickersRequestModel(quotes: quotes);
    }

    test('remote', () async {
      final apiService = CoinpaprikaApiServiceImpl.createWithOption(
        baseUrl: "https://api.coinpaprika.com",
      );

      await expectLater(
        apiService.getTickers(requestOption: createApiRequestOption(quotes: {CoinpaprikaQuoteType.krw})),
        completes,
      );
    });

    group('mock', () {
      test('succeed', () async {
        final apiService = _createApiService(mockDio);
        when(() => mockDio.get<List<dynamic>>("/v1/tickers", queryParameters: {"quotes": "KRW,BTC"}))
            .thenAnswerWith(_MockResponse(200, data: []));
        await expectLater(
          apiService.getTickers(
            requestOption: createApiRequestOption(quotes: {CoinpaprikaQuoteType.krw, CoinpaprikaQuoteType.btc}),
          ),
          completion(isA<ApiResponse<CoinpaprikaTickersModel>>()),
        );
        verify(() => mockDio.get<List<dynamic>>("/v1/tickers", queryParameters: {"quotes": "KRW,BTC"})).called(1);
        verifyNoMoreInteractions(mockDio);
      });

      test('error', () async {
        final apiService = _createApiService(mockDio);
        when(() => mockDio.get<List<dynamic>>("/v1/tickers", queryParameters: {"quotes": "KRW"}))
            .thenThrow(DioError(requestOptions: _MockRequestOptions()));
        await expectLater(
          apiService.getTickers(requestOption: createApiRequestOption(quotes: {CoinpaprikaQuoteType.krw})),
          throwsException,
        );
        verify(() => mockDio.get<List<dynamic>>("/v1/tickers", queryParameters: {"quotes": "KRW"})).called(1);
        verifyNoMoreInteractions(mockDio);
      });
    });
  });
}
