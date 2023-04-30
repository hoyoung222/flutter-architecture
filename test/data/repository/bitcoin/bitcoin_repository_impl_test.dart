import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sample/data/datasource/coinpaprika/coinpaprika_data_source.dart';
import 'package:sample/data/mapper/bitcoin/bitcoin_data_mapper.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_tickers_model.dart';
import 'package:sample/data/model/coinpaprika/coinpaprika_tickers_request_model.dart';
import 'package:sample/data/repository/bitcoin/bitcoin_repository_impl.dart';
import 'package:sample/domain/entity/bitcoin/bitcoin_quote_type.dart';
import 'package:sample/domain/entity/bitcoin/bitcoins_entity.dart';
import 'package:sample/domain/repository/bitcoin/bitcoin_repository.dart';

import '../../../utils/mocktail_ext.dart';

class _MockBitcoinDataMapper extends Mock implements BitcoinDataMapper {}

class _MockCoinpaprikaDataSource extends Mock implements CoinpaprikaDataSource {}

class _MockCoinpaprikaTickersModel extends Mock implements CoinpaprikaTickersModel {}

class _MockCoinpaprikaTickersRequestModel extends Mock implements CoinpaprikaTickersRequestModel {}

class _MockBitcoinsEntity extends Mock implements BitcoinsEntity {}

void main() {
  late final BitcoinDataMapper mockMapper;
  late final CoinpaprikaDataSource mockDataSource;

  late final BitcoinRepository bitcoinRepo;

  setUpAll(() {
    mockMapper = _MockBitcoinDataMapper();
    mockDataSource = _MockCoinpaprikaDataSource();

    bitcoinRepo = BitcoinRepositoryImpl(coinpaprikaDataSource: mockDataSource, mapper: mockMapper);
  });

  test('$BitcoinRepositoryImpl - getList', () async {
    final mapperResultRequestModel = _MockCoinpaprikaTickersRequestModel();
    final dataSourceResultTickersModel = _MockCoinpaprikaTickersModel();
    final mapperResultBitcoinsEntity = _MockBitcoinsEntity();
    when(() => mockMapper.mapperToCoinpaprikaTickersRequestModel({BitcoinQuoteType.krw}))
        .thenReturn(mapperResultRequestModel);
    when(() => mockDataSource.getTickers(requestModel: mapperResultRequestModel))
        .thenAnswerWith(dataSourceResultTickersModel);
    when(() => mockMapper.mapperFromCoinpaprikaTickersModel(dataSourceResultTickersModel, maxRank: 100))
        .thenReturn(mapperResultBitcoinsEntity);

    await expectLater(
      bitcoinRepo.getList(maxRank: 100, quotes: {BitcoinQuoteType.krw}),
      completion(mapperResultBitcoinsEntity),
    );

    verifyInOrder([
      () => mockMapper.mapperToCoinpaprikaTickersRequestModel({BitcoinQuoteType.krw}),
      () => mockDataSource.getTickers(requestModel: mapperResultRequestModel),
      () => mockMapper.mapperFromCoinpaprikaTickersModel(dataSourceResultTickersModel, maxRank: 100),
    ]);
    verifyNoMoreInteractions(mockMapper);
    verifyNoMoreInteractions(mockDataSource);
  });
}
