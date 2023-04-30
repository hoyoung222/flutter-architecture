import 'package:flutter_test/flutter_test.dart';
import 'package:sample/domain/entity/bitcoin/bitcoin_quote_entity.dart';

void main() {
  group('$BitcoinQuoteEntity', () {
    test('creating instance of Entity should succeed', () {
      const model = BitcoinQuoteEntity(price: 1000.0);

      expect(model.price, 1000.0);
    });

    test('creating instance of Entity should be equal to another instance with same values', () {
      const model1 = BitcoinQuoteEntity(price: 1000.0);
      const model2 = BitcoinQuoteEntity(price: 1000.0);

      expect(model1, model2);
    });

    test('creating instance of Entity should not be equal to another instance with different values', () {
      const model1 = BitcoinQuoteEntity(price: 1000.0);
      const model2 = BitcoinQuoteEntity(price: 2000.0);

      expect(model1, isNot(model2));
    });
  });
}
