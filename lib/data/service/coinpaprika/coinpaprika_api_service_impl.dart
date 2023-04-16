import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_tickers_model.dart';
import 'package:sample/data/service/base/api_exception.dart';
import 'package:sample/data/service/base/api_request_option.dart';

import '../../model/coinpaprika/coinpaprika_ticker_model.dart';
import '../../utils/dio/dio_logging_interceptor.dart';
import '../base/api_response.dart';
import 'coinpaprika_api_service.dart';

class CoinpaprikaApiServiceImpl extends CoinpaprikaApiService {
  @visibleForTesting
  final DioLoggingInterceptor loggingInterceptor = const DioLoggingInterceptor("CoinpaprikaApi");

  @visibleForTesting
  final Dio dio;

  @visibleForTesting
  CoinpaprikaApiServiceImpl(this.dio);

  factory CoinpaprikaApiServiceImpl.createWithOption({
    required String baseUrl,
    Set<int> validateStatusCodeSet = const {200},
    Duration? connectTimeout,
    Duration? receiveTimeout,
    Duration? sendTimeout,
  }) {
    return CoinpaprikaApiServiceImpl(
      Dio(
        BaseOptions(
          baseUrl: baseUrl,
          validateStatus: (status) => validateStatusCodeSet.contains(status),
          connectTimeout: connectTimeout,
          receiveTimeout: receiveTimeout,
          sendTimeout: sendTimeout,
        ),
      ),
    );
  }

  @override
  void enableLog(bool enable) {
    dio.interceptors.remove(loggingInterceptor);
    if (enable) {
      dio.interceptors.add(loggingInterceptor);
    }
  }

  @override
  Future<ApiResponse<CoinpaprikaTickersModel>> getTickers({required ApiRequestOption requestOption}) async {
    return _get<List<dynamic>, CoinpaprikaTickersModel>(
      "/v1/tickers",
      requestOption: requestOption,
      mapper: (body) => CoinpaprikaTickersModel(items: body.map((e) => CoinpaprikaTickerModel.fromJson(e)).toList()),
    );
  }

  Future<ApiResponse<T>> _get<S, T>(
    String path, {
    ApiRequestOption? requestOption,
    required T Function(S body) mapper,
  }) async {
    return dio
        .get<S>(path, data: requestOption?.data, queryParameters: requestOption?.queryParameters)
        .then((value) => mapper(value.data as S))
        .then((value) => ApiResponse(data: value))
        .catchError((e) => Future(() => throw convertError(e)));
  }

  @visibleForTesting
  ApiException convertError(Object error) {
    try {
      if (error is DioError) {
        if (error.type == DioErrorType.badResponse) {
          final statusCode = error.response?.statusCode;
          if (statusCode != null) {
            return ApiException.badResponse(error, statusCode, error.message ?? "");
          } else {
            return ApiException.other(error, error.message ?? "");
          }
        } else {
          return ApiException.other(error, error.message ?? "");
        }
      } else {
        throw error;
      }
    } on Exception catch (error) {
      return ApiException.other(error, error.toString());
    } catch (error) {
      return ApiException.other(Exception(error.runtimeType), error.toString());
    }
  }
}
