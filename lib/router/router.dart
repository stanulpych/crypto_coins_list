import 'package:auto_route/auto_route.dart';
import 'package:crypto_coins_list/router/router.gr.dart';

import '../features/crypto_coin/view/crypto_coin_screen.dart';
import '../features/crypto_list/view/crypto_list_screen.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: CryptoListRoute.page, path: '/'),
    AutoRoute(page: CryptoCoinRoute.page),
  ];
}

// final routes = {
//   '/' : (context) => const CryptoListScreen(),
//   '/coin' : (context) => const CryptoCoinScreen(),
// };