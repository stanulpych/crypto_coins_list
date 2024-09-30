import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../repositories/crypto_coins/crypto_coins.dart';
import '../widgets/widgets.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {

  List<CryptoCoin>? _cryptoCoinsList;

  @override
  void initState() {
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CryptoCurrenciesList'),
        leading: const Icon(
          Icons.arrow_back,
        ),
      ),
      body: (_cryptoCoinsList == null)
          ? const Center(child: CircularProgressIndicator(
        color: Colors.yellow,))
          : ListView.separated(
        padding: const EdgeInsets.only(top: 16),
        itemCount: _cryptoCoinsList!.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) {
          final coin = _cryptoCoinsList![i];
          final coinName = coin.name;
          return CryptoCoinTile(coin: coin);
        },
      ),
    );
  }
  Future<void> _loadCryptoCoins() async {
    _cryptoCoinsList = await GetIt.I<AbstractCoinsRepository>().getCoinsList();
    setState(() {});
  }

}

