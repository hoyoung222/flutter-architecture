import 'package:mocktail/mocktail.dart';

extension VoidAnswerOnFuture on When<Future<void>> {
  void thenAnswerWithVoid() => thenAnswer((_) => Future<void>.value());
}

extension GenericAnswer<T> on When<Future<T>> {
  void thenAnswerWith(T value) => thenAnswer((_) => Future<T>.value(value));
}

extension StreamedAnswer<T> on When<Stream<T>> {
  void thenEmit(List<T> values) => thenAnswer((_) => Stream.fromIterable(values));
}

extension VoidAnswerOnVoid on When<void> {
  void thenReturnWithVoid() => thenReturn(null);
}
