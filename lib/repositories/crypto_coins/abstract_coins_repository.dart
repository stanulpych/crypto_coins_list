import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin_details.dart';

import 'models/crypto_coin.dart';

abstract class  AbstractCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList();
  Future<CryptoCoin> getCoinDetails(String currencyCode);
}