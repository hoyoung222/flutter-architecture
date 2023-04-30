import 'package:flutter_test/flutter_test.dart';
import 'package:sample/domain/use_case/core/result.dart';

void main() {
  group('$ResultSuccess', () {
    test('creating instance of Entity should succeed', () {
      const model = Result.success(data: "data");

      expect(model, isA<ResultSuccess>().having((e) => e.data, "data", "data"));
    });

    test('creating instance of Entity should be equal to another instance with same values', () {
      const model1 = Result.success(data: "data");
      const model2 = Result.success(data: "data");

      expect(model1, model2);
    });

    test('creating instance of Entity should not be equal to another instance with different values', () {
      const model1 = Result.success(data: "data");
      const model2 = Result.success(data: "data2");

      expect(model1, isNot(model2));
    });
  });

  group('$ResultError', () {
    test('creating instance of Entity should succeed', () {
      final model = Result.error(error: TypeError());

      expect(model, isA<ResultError>().having((e) => e.error, "error", isA<TypeError>()));
    });

    test('creating instance of Entity should be equal to another instance with same values', () {
      final model1 = Result.error(error: "error");
      final model2 = Result.error(error: "error");

      expect(model1, model2);
    });

    test('creating instance of Entity should not be equal to another instance with different values', () {
      final model1 = Result.error(error: "error");
      final model2 = Result.error(error: "error2");

      expect(model1, isNot(model2));
    });

    test('creating instance of Entity should not be equal to another instance with same exceptions', () {
      final model1 = Result.error(error: Exception());
      final model2 = Result.error(error: Exception());

      expect(model1, isNot(model2));
    });

    test('creating instance of Entity should not be equal to another instance with same errors', () {
      final model1 = Result.error(error: Error());
      final model2 = Result.error(error: Error());

      expect(model1, isNot(model2));
    });
  });
}
