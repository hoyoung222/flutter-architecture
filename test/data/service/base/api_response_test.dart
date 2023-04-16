import 'package:flutter_test/flutter_test.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_quote_model.dart';
import 'package:sample/data/service/base/api_response.dart';

void main() {
  group('$CoinpaprikaQuoteModel', () {
    test('creating instance of Model should succeed', () {
      const model = ApiResponse<int>(data: 10);
      expect(model.data, isA<int>());
      expect(model.data, 10);
    });

    test('creating instance of Model should be equal to another instance with same values', () {
      const model1 = ApiResponse<int>(data: 10);
      const model2 = ApiResponse<int>(data: 10);
      expect(model1, model2);
    });

    test('creating instance of Model should not be equal to another instance with different values', () {
      const model1 = ApiResponse<int>(data: 10);
      const model2 = ApiResponse<int>(data: 5);
      expect(model1, isNot(model2));
    });
  });
}
