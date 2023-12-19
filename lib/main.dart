import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_meditaion/di/providers.dart';
import 'package:flutter_meditaion/generated/l10n.dart';
import 'package:flutter_meditaion/view/home/home_screen.dart';
import 'package:flutter_meditaion/view/intro/intro_screen.dart';
import 'package:flutter_meditaion/view_models/main_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: globalProviders,
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<MainViewModel>(context, listen: false);
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
      home: FutureBuilder(
          future: viewModel.isSkipIntroScreen(),
          builder: (context, AsyncSnapshot<bool> snapshot) {
            if (snapshot.hasData && snapshot.data == true) {
              return HomeScreen();
            } else {
              return IntroScreen();
            }
          }),
    );
  }
}
