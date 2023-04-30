import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sample/domain/entity/bitcoin/bitcoin_quote_type.dart';
import 'package:sample/domain/entity/bitcoin/bitcoins_entity.dart';
import 'package:sample/domain/repository/bitcoin/bitcoin_repository.dart';
import 'package:sample/domain/use_case/get_bitcoin_list_use_case.dart';

import '../../utils/mocktail_ext.dart';

class _MockBitcoinRepository extends Mock implements BitcoinRepository {}

class _MockBitcoinsEntity extends Mock implements BitcoinsEntity {}

void main() {
  late final BitcoinRepository mockBitcoinRepo;
  late final GetBitcoinListUseCase useCase;

  setUpAll(() {
    mockBitcoinRepo = _MockBitcoinRepository();
    useCase = GetBitcoinListUseCase(bitcoinRepository: mockBitcoinRepo);
  });

  test('$GetBitcoinListUseCase', () async {
    when(() => mockBitcoinRepo.getList(maxRank: 100, quotes: {BitcoinQuoteType.krw}))
        .thenAnswerWith(_MockBitcoinsEntity());

    await expectLater(useCase(GetBitcoinListParams(maxRank: 100, quotes: {BitcoinQuoteType.krw})), completes);

    verify(() => mockBitcoinRepo.getList(maxRank: 100, quotes: {BitcoinQuoteType.krw})).called(1);
    verifyNoMoreInteractions(mockBitcoinRepo);
  });
}
