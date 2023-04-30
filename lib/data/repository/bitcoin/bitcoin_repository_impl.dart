import 'package:sample/data/datasource/coinpaprika/coinpaprika_data_source.dart';
import 'package:sample/domain/entity/bitcoin/bitcoin_quote_type.dart';
import 'package:sample/domain/entity/bitcoin/bitcoins_entity.dart';
import 'package:sample/domain/repository/bitcoin/bitcoin_repository.dart';

import '../../mapper/bitcoin/bitcoin_data_mapper.dart';

class BitcoinRepositoryImpl extends BitcoinRepository {
  final BitcoinDataMapper _mapper;

  final CoinpaprikaDataSource _coinpaprikaDataSource;

  BitcoinRepositoryImpl({
    required CoinpaprikaDataSource coinpaprikaDataSource,
    BitcoinDataMapper mapper = const BitcoinDataMapper(),
  })  : _coinpaprikaDataSource = coinpaprikaDataSource,
        _mapper = mapper;

  @override
  Future<BitcoinsEntity> getList({
    required int maxRank,
    required Set<BitcoinQuoteType> quotes,
  }) {
    return _coinpaprikaDataSource
        .getTickers(requestModel: _mapper.mapperToCoinpaprikaTickersRequestModel(quotes))
        .then((value) => _mapper.mapperFromCoinpaprikaTickersModel(value, maxRank: maxRank));
  }
}
