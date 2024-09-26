import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/widgets.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CryptoCurrenciesList'),
        leading: const Icon(
          Icons.arrow_back,
        ),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) {
          const coinName = 'Bitcoin';
          return const CryptoCoinTile(coinName: coinName);
        },
      ),
    );
  }
}

