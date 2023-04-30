import 'package:sample/domain/repository/bitcoin/bitcoin_repository.dart';
import 'package:sample/domain/use_case/core/use_case.dart';

import '../entity/bitcoin/bitcoin_quote_type.dart';
import '../entity/bitcoin/bitcoins_entity.dart';

class GetBitcoinListParams extends Params {
  final int maxRank;
  final Set<BitcoinQuoteType> _quotes;

  Set<BitcoinQuoteType> get quotes => _quotes.toSet();

  GetBitcoinListParams({required this.maxRank, required Set<BitcoinQuoteType> quotes}) : _quotes = quotes;

  @override
  List<Object?> get props => [maxRank, quotes];
}

class GetBitcoinListUseCase extends UseCase<BitcoinsEntity, GetBitcoinListParams> {
  final BitcoinRepository _bitcoinRepository;

  GetBitcoinListUseCase({
    required BitcoinRepository bitcoinRepository,
  }) : _bitcoinRepository = bitcoinRepository;

  @override
  Future<BitcoinsEntity> execute(GetBitcoinListParams params) async {
    return _bitcoinRepository.getList(maxRank: params.maxRank, quotes: params.quotes);
  }
}
