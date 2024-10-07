import 'package:auto_route/auto_route.dart';
import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:crypto_coins_list/router/router.gr.dart';
import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final coinDetails  = coin.details;
    return ListTile(
      leading:
      Image.network(coinDetails.fullImageUrl,
      height: 60,
      width: 60),
      title: Text(
        coin.name,
        style: Theme
            .of(context)
            .textTheme
            .bodyMedium,
      ),
      subtitle: Text(
        '${coinDetails.priceInUSD} \$',
        style: Theme
            .of(context)
            .textTheme
            .labelSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        AutoRouter.of(context).push(CryptoCoinRoute(coin: coin));
      },
    );
  }
}
