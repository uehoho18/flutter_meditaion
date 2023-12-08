import 'package:flutter/material.dart';
import 'package:flutter_meditaion/generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Text(S.of(context).introTitle1),
      ),
    ));
  }
}
