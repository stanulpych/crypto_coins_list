// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:crypto_coins_list/features/crypto_coin/view/crypto_coin_screen.dart'
    as _i1;
import 'package:crypto_coins_list/features/crypto_list/view/crypto_list_screen.dart'
    as _i2;
import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin.dart'
    as _i5;
import 'package:flutter/material.dart' as _i4;

/// generated route for
/// [_i1.CryptoCoinScreen]
class CryptoCoinRoute extends _i3.PageRouteInfo<CryptoCoinRouteArgs> {
  CryptoCoinRoute({
    _i4.Key? key,
    required _i5.CryptoCoin coin,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          CryptoCoinRoute.name,
          args: CryptoCoinRouteArgs(
            key: key,
            coin: coin,
          ),
          initialChildren: children,
        );

  static const String name = 'CryptoCoinRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CryptoCoinRouteArgs>();
      return _i1.CryptoCoinScreen(
        key: args.key,
        coin: args.coin,
      );
    },
  );
}

class CryptoCoinRouteArgs {
  const CryptoCoinRouteArgs({
    this.key,
    required this.coin,
  });

  final _i4.Key? key;

  final _i5.CryptoCoin coin;

  @override
  String toString() {
    return 'CryptoCoinRouteArgs{key: $key, coin: $coin}';
  }
}

/// generated route for
/// [_i2.CryptoListScreen]
class CryptoListRoute extends _i3.PageRouteInfo<void> {
  const CryptoListRoute({List<_i3.PageRouteInfo>? children})
      : super(
          CryptoListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CryptoListRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.CryptoListScreen();
    },
  );
}
