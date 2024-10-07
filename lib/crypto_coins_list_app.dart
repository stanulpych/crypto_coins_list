import 'package:crypto_coins_list/router/router.dart';
import 'package:crypto_coins_list/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'generated/l10n.dart';

class CryptoCurrenciesListApp extends StatelessWidget {
  CryptoCurrenciesListApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'CryptoCurrenciesList',
      theme: darkTheme,
      routerConfig: _appRouter.config(
        navigatorObservers: () =>
        [
          TalkerRouteObserver(GetIt.I<Talker>()),
        ],
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}

