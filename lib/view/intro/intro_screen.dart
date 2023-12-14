import 'package:flutter/material.dart';
import 'package:flutter_meditaion/generated/l10n.dart';
import 'package:flutter_meditaion/view/common/show_modal_dialog.dart';
import 'package:flutter_meditaion/view/home/home_screen.dart';
import 'package:flutter_meditaion/view/intro/components/skip_intro_dialog.dart';
import 'package:flutter_meditaion/view_models/main_view_model.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:provider/provider.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      listContentConfig: _createSliders(context),
      onDonePress: () => _openHomeScreen(context),
      onSkipPress: () => showModalDialog(
          context: context,
          dialogWidget: SkipIntroDialog(
            onSkipped: () => _skipIntro(context),
          ),
          isSccrollable: false),
    );
  }

  _createSliders(BuildContext context) {
    final appThema = Theme.of(context);
    return [
      ContentConfig(
        title: S.of(context).introDesc1,
        description: S.of(context).introDesc1,
        pathImage: "assets/images/intro_image01.png",
        backgroundColor: appThema.primaryColorDark,
      ),
      ContentConfig(
        title: S.of(context).introDesc2,
        description: S.of(context).introDesc2,
        pathImage: "assets/images/intro_image02.png",
        backgroundColor: appThema.primaryColor,
      ),
      ContentConfig(
        title: S.of(context).introDesc3,
        description: S.of(context).introDesc3,
        pathImage: "assets/images/intro_image03.png",
        backgroundColor: appThema.primaryColorLight,
      ),
      ContentConfig(
        title: S.of(context).introDesc4,
        description: S.of(context).introDesc4,
        pathImage: "assets/images/meiso_logo.png",
        backgroundColor: appThema.primaryColor,
      ),
    ];
  }

  _openHomeScreen(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ));
  }

  _skipIntro(BuildContext context) async {
    final viewModel = context.read<MainViewModel>();
    await viewModel.skipIntro();
    _openHomeScreen(context);
  }
}
