import 'package:crypto_coins_list/features/bloc/crypto_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../repositories/crypto_coins/crypto_coins.dart';
import '../widgets/widgets.dart';
import 'package:crypto_coins_list/theme/theme.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {

  final _cryptoListBloc = CryptoListBloc(
      GetIt.I<AbstractCoinsRepository>(),
  );

  @override
  void initState() {
    _cryptoListBloc.add(LoadCryptoList());
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
      body: BlocBuilder<CryptoListBloc, CryptoListState>(
          bloc: _cryptoListBloc,
          builder: (context, state){
            if(state is CryptoListLoaded){
            return ListView.separated(
              padding: const EdgeInsets.only(top: 16),
              itemCount: state.coinsList.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, i) {
                final coin = state.coinsList[i];
                final coinName = coin.name;
                return CryptoCoinTile(coin: coin);
              },
            );
            }
            if(state is CryptoListLoadingFailure){
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Something went wrong',
                      style: darkTheme.textTheme.bodyMedium,
                    ),
                    Text(
                        'Please, try againg later',
                        style: darkTheme.textTheme.labelSmall?.copyWith(fontSize: 16)
                    ),
                  ],
                )

              );
            }
            return const Center(child: CircularProgressIndicator(
              color: Colors.yellow,));
          }
      )
    );
  }

}

