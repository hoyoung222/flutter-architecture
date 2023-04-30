import 'package:flutter_test/flutter_test.dart';
import 'package:sample/domain/use_case/core/result.dart';
import 'package:sample/domain/use_case/core/use_case.dart';

class _ReturnVoidUseCase extends UseCase<void, EmptyParams> {
  @override
  Future<void> execute(EmptyParams params) async {
    return Future.value();
  }
}

class _ReturnObjectUseCase extends UseCase<String, EmptyParams> {
  @override
  Future<String> execute(EmptyParams params) async {
    return Future.value("test");
  }
}

class _ErrorUseCase extends UseCase<String, EmptyParams> {
  final Object error;

  _ErrorUseCase(this.error);

  @override
  Future<String> execute(EmptyParams params) async {
    return Future.error(error);
  }
}

void main() {
  group('$UseCase', () {
    test('success - return void', () async {
      UseCase useCase = _ReturnVoidUseCase();

      await expectLater(
        useCase(EmptyParams()),
        completion(isA<ResultSuccess>().having((e) => e.data, "data", isA<void>())),
      );
    });

    test('success - return object', () async {
      UseCase useCase = _ReturnObjectUseCase();

      await expectLater(useCase(EmptyParams()), completion(Result.success(data: "test")));
    });

    test('error - return exception', () async {
      UseCase useCase = _ErrorUseCase(Exception("test"));

      await expectLater(
        useCase(EmptyParams()),
        completion(isA<ResultError>().having((e) => e.error, "error", isA<Exception>())),
      );
    });

    test('error - return error', () async {
      UseCase useCase = _ErrorUseCase(TypeError());

      await expectLater(
        useCase(EmptyParams()),
        completion(isA<ResultError>().having((e) => e.error, "error", isA<TypeError>())),
      );
    });
  });

  test('$EmptyParams', () {
    expect(EmptyParams(), isA<Params>());
    expect(EmptyParams(), EmptyParams());
  });
}
