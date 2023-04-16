// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file


part of '../coinpaprika_ticker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoinpaprikaTickerModel _$$_CoinpaprikaTickerModelFromJson(
        Map<String, dynamic> json) =>
    _$_CoinpaprikaTickerModel(
      id: json['id'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      rank: json['rank'] as int,
      quotes: (json['quotes'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k, CoinpaprikaQuoteModel.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_CoinpaprikaTickerModelToJson(
        _$_CoinpaprikaTickerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'rank': instance.rank,
      'quotes': instance.quotes,
    };
