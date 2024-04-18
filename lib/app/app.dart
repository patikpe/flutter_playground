import 'package:flutter/material.dart';
import 'package:flutter_playground/app/router/app_router.dart';
import 'package:flutter_playground/app/theme/theme.dart';
import 'package:flutter_playground/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My Flutter Playground',
      theme: FPTheme().lightTheme,
      darkTheme: FPTheme().darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter().router,
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
