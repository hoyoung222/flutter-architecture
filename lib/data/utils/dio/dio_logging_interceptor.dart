import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioLoggingInterceptor extends Interceptor {
  final String tag;

  const DioLoggingInterceptor(this.tag);

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    logPrint('--> ${options.method} ${options.uri}');

    if (options.data != null) {
      logPrint('BODY:');
      printAll(options.data);
    } else {
      logPrint('BODY: EMPTY');
    }

    logPrint('--> END');

    return handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    logPrint('<-- ERROR ${err.requestOptions.uri} $err');
    return handler.next(err);
  }

  @override
  Future onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    final options = response.requestOptions;
    logPrint(
      '<-- ${response.statusCode} '
      '${(response.statusMessage?.isEmpty ?? true) ? "" : response.statusMessage} '
      '${options.uri}',
    );

    final resBody = response.data;
    if (resBody != null) {
      logPrint('BODY:');
      printAll(resBody);
    } else {
      logPrint('BODY: EMPTY');
    }

    logPrint('<-- END');

    return handler.next(response);
  }

  void printAll(msg) {
    msg.toString().split('\n').forEach(logPrint);
  }

  void logPrint(String s) {
    debugPrint("[$tag] $s");
  }
}
