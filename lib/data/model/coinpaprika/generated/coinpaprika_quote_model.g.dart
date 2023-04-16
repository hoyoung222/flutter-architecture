// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file


part of '../coinpaprika_quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoinpaprikaQuoteModel _$$_CoinpaprikaQuoteModelFromJson(
        Map<String, dynamic> json) =>
    _$_CoinpaprikaQuoteModel(
      price: (json['price'] as num).toDouble(),
      marketCap: (json['market_cap'] as num).toDouble(),
      volume24h: (json['volume_24h'] as num).toDouble(),
      percentChange24h: (json['percent_change_24h'] as num).toDouble(),
      percentChange7d: (json['percent_change_7d'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CoinpaprikaQuoteModelToJson(
        _$_CoinpaprikaQuoteModel instance) =>
    <String, dynamic>{
      'price': instance.price,
      'market_cap': instance.marketCap,
      'volume_24h': instance.volume24h,
      'percent_change_24h': instance.percentChange24h,
      'percent_change_7d': instance.percentChange7d,
    };
