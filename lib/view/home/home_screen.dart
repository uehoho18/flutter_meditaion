import 'package:flutter/material.dart';
import 'package:flutter_meditaion/data_models/level.dart';
import 'package:flutter_meditaion/data_models/meiso_theme.dart';
import 'package:flutter_meditaion/data_models/meiso_time.dart';
import 'package:flutter_meditaion/generated/l10n.dart';
import 'package:flutter_meditaion/view/home/components/decoated_background.dart';
import 'package:flutter_meditaion/view/home/components/header_part.dart';
import 'package:flutter_meditaion/view/home/components/play_buttons_part.dart';
import 'package:flutter_meditaion/view/home/components/speed_dial_part.dart';
import 'package:flutter_meditaion/view/home/components/status_display_part.dart';
import 'package:flutter_meditaion/view/home/components/volume_slider_part.dart';
import 'package:flutter_meditaion/view_models/main_view_model.dart';
import 'package:provider/provider.dart';

List<Level> levels = [];
List<MeisoTheme> meisoThemes = [];
List<MeisoTime> meisoTimes = [];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    setLevels(context);
    setMeisoThemes(context);
    setMeisoTimes(context);

    final viewModel = context.read<MainViewModel>();
    // final viewModel = context. <MainViewModel>();

    Future(() {
      viewModel.getUserSettings();
    });

    return const Scaffold(
      floatingActionButton: SpeedDialPart(),
      body: Stack(
        children: [
          DecoratedBackgound(),
          Column(
            children: [
              HeaderPart(),
              StatusSidPlay(),
              PlayButtonsPart(),
              VolimeSliderPart(),
            ],
          )
        ],
      ),
    );
  }

  List<Level> setLevels(BuildContext context) {
    return [
      Level(
        levelId: LEVEL_ID_EASY,
        levelName: S.of(context).levelEasy,
        explanation: S.of(context).levelSelectEasy,
        bellPath: "assets/sounds/bells_easy.mp3",
        totalInterval: 12,
        inhaleInterval: 4,
        holdInterval: 4,
        exhaleInterval: 4,
      ),
      Level(
        levelId: LEVEL_ID_NORMAL,
        levelName: S.of(context).levelNormal,
        explanation: S.of(context).levelSelectNormal,
        bellPath: "assets/sounds/bells_normal.mp3",
        totalInterval: 16,
        inhaleInterval: 4,
        holdInterval: 4,
        exhaleInterval: 8,
      ),
      Level(
        levelId: LEVEL_ID_MID,
        levelName: S.of(context).levelMid,
        explanation: S.of(context).levelSelectMid,
        bellPath: "assets/sounds/bells_mid.mp3",
        totalInterval: 20,
        inhaleInterval: 4,
        holdInterval: 8,
        exhaleInterval: 8,
      ),
      Level(
        levelId: LEVEL_ID_HIGH,
        levelName: S.of(context).levelHigh,
        explanation: S.of(context).levelSelectHigh,
        bellPath: "assets/sounds/bells_advanced.mp3",
        totalInterval: 28,
        inhaleInterval: 4,
        holdInterval: 16,
        exhaleInterval: 8,
      ),
    ];
  }

  List<MeisoTheme> setMeisoThemes(BuildContext context) {
    return [
      MeisoTheme(
        themeId: THEME_ID_SILENCE,
        themeName: S.of(context).themeSilence,
        imagePath: "assets/images/silence.jpg",
        soundPath: "assets/sounds/bgm_silence.mp3",
      ),
      MeisoTheme(
        themeId: THEME_ID_CAVE,
        themeName: S.of(context).themeCave,
        imagePath: "assets/images/cave.jpg",
        soundPath: "assets/sounds/bgm_cave.mp3",
      ),
      MeisoTheme(
        themeId: THEME_ID_SPRING,
        themeName: S.of(context).themeSpring,
        imagePath: "assets/images/spring.jpg",
        soundPath: "assets/sounds/bgm_spring.mp3",
      ),
      MeisoTheme(
        themeId: THEME_ID_SUMMER,
        themeName: S.of(context).themeSummer,
        imagePath: "assets/images/summer.jpg",
        soundPath: "assets/sounds/bgm_summer.mp3",
      ),
      MeisoTheme(
        themeId: THEME_ID_AUTUMN,
        themeName: S.of(context).themeAutumn,
        imagePath: "assets/images/autumn.jpg",
        soundPath: "assets/sounds/bgm_autumn.mp3",
      ),
      MeisoTheme(
        themeId: THEME_ID_STREAM,
        themeName: S.of(context).themeStream,
        imagePath: "assets/images/stream.jpg",
        soundPath: "assets/sounds/bgm_stream.mp3",
      ),
      MeisoTheme(
        themeId: THEME_ID_WIND_BELLS,
        themeName: S.of(context).themeWindBell,
        imagePath: "assets/images/wind_bell.jpg",
        soundPath: "assets/sounds/bgm_wind_bell.mp3",
      ),
      MeisoTheme(
        themeId: THEME_ID_BONFIRE,
        themeName: S.of(context).themeBonfire,
        imagePath: "assets/images/bonfire.jpg",
        soundPath: "assets/sounds/bgm_bonfire.mp3",
      ),
    ];
  }

  List<MeisoTime> setMeisoTimes(BuildContext context) {
    return [
      MeisoTime(
        timeDisplayString: S.of(context).min5,
        timeMinutes: 5,
      ),
      MeisoTime(
        timeDisplayString: S.of(context).min10,
        timeMinutes: 10,
      ),
      MeisoTime(
        timeDisplayString: S.of(context).min15,
        timeMinutes: 15,
      ),
      MeisoTime(
        timeDisplayString: S.of(context).min20,
        timeMinutes: 20,
      ),
      MeisoTime(
        timeDisplayString: S.of(context).min30,
        timeMinutes: 30,
      ),
      MeisoTime(
        timeDisplayString: S.of(context).min60,
        timeMinutes: 60,
      ),
    ];
  }
}
