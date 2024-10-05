import 'package:crypto_coins_list/repositories/crypto_coins/crypto_coins.dart';
import 'package:dio/dio.dart';
import 'models/models.dart';

class CryptoCoinsRepository implements AbstractCoinsRepository {
  final Dio dio;
  CryptoCoinsRepository({
    required this.dio
  });
  @override
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await dio.get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,TON,BNB,AID,SOL,HMND&tsyms=USD');

    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final cryptoCoinsList = dataRaw.entries
        .map((e) {
      final usdData = (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final details = CryptoCoinDetail.fromJson(usdData);
      // final price = usdData['PRICE'];
      // final imageUrl = usdData['IMAGEURL'];
      return CryptoCoin(name: e.key, details: details );
        })
        // priceInUSD: price,
        // imageUrl: 'https://www.cryptocompare.com/$imageUrl'

        .toList();
    return cryptoCoinsList;

  }

  @override
  Future<CryptoCoin> getCoinDetails(String currencyCode) async {
    final response = await dio.get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=$currencyCode&tsyms=USD');
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final coinData = dataRaw[currencyCode] as Map<String, dynamic>;
    final usdData = coinData['USD'] as Map<String, dynamic>;
    final details = CryptoCoinDetail.fromJson(usdData);
    // final price = usdData['PRICE'];
    // final imageUrl = usdData['IMAGEURL'];
    // final toSymbol = usdData['TOSYMBOL'];
    // final int lastUpdate = usdData['LASTUPDATE'];
    // final hight24Hour = usdData['HIGH24HOUR'];
    // final low24Hours = usdData['LOW24HOUR'];

    return CryptoCoin(name: currencyCode, details: details);
      // priceInUSD: price,
      // imageUrl: 'https://www.cryptocompare.com/$imageUrl',
      // toSymbol: toSymbol,
      // lastUpdate: DateTime.fromMillisecondsSinceEpoch(lastUpdate).toString(),
      // hight24Hour: hight24Hour,
      // low24Hours: low24Hours,
  }
}