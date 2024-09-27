import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {

  CryptoCoin? coin;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is CryptoCoin, 'You must provide CryptoCoin args');
    // if(args == null){
    //   log('You must provide args');
    //   return;
    // }
    // if(args is! String){
    //   log('You must provide String args');
    //   return;
    // }
    coin = args as CryptoCoin;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(coin?.name ?? '...')),
    );
  }
}