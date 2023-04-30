import 'package:equatable/equatable.dart';
import 'package:sample/domain/use_case/core/result.dart';

abstract class Params extends Equatable {}

class EmptyParams extends Params {
  @override
  List<Object?> get props => [];
}

abstract class UseCase<T, P extends Params> {
  Future<Result<T>> call(P params) async {
    try {
      return Result.success(data: await execute(params));
    } catch (e) {
      return Result.error(error: e);
    }
  }

  Future<T> execute(P params);
}
