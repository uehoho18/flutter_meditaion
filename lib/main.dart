import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_meditaion/di/providers.dart';
import 'package:flutter_meditaion/generated/l10n.dart';
import 'package:flutter_meditaion/view/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: globalProviders,
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meditation",
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}
