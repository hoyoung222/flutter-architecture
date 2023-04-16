import 'package:flutter_test/flutter_test.dart';
import 'package:sample/data/service/base/api_exception.dart';

void main() {
  test('$ApiException.badResponse should return correct values', () {
    final rawException = Exception();
    final statusCode = 404;
    final message = 'Not found';
    final apiException = ApiException.badResponse(rawException, statusCode, message);

    expect(apiException, isA<ApiExceptionBadResponse>());
    expect(apiException.rawException, rawException);
    expect(apiException.message, message);

    if (apiException is ApiExceptionBadResponse) {
      expect(apiException.statusCode, statusCode);
    }
  });

  test('$ApiException.other should return correct values', () {
    final rawException = Exception();
    final message = 'Something went wrong';
    final apiException = ApiException.other(rawException, message);

    expect(apiException, isA<ApiExceptionOther>());
    expect(apiException.rawException, rawException);
    expect(apiException.message, message);
  });
}
